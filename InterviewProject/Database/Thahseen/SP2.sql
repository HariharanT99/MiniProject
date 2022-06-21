

CREATE   PROC [dbo].[uspGetApplicant]
@Id int
as
Begin
		Select ap.ApplicantID
		,(ap.FirstName + ' ' + ap.LastName) as 'Name'
		,d.Designation
		,ap.LastEmployer
		,ap.MedicalStatus
		,ap.NoticePeriod
		,JSON_QUERY((
			Select i.InterviewID
			,i.InterviewRoundID
			,ird.InterviewRoundName
			,s.StatusType as [Status]
			,JSON_QUERY((
				Select irv.InterviewerReviewID
				,irv.UserID as [InterviewerID]
				,u.[Name] as [InterviewerName]
				,irv.Pros
				,irv.Cons
				,irv.Comments
				,sir.[StatusType] as [Result]
				,JSON_QUERY((
					Select skr.RatingID
					,sk.SkillID
					,sk.[Name] as [SkillName]
					,skcat.[Name] as [SkillCategoryName]
					from SkillRating skr
					join Skill sk
					on skr.SkillID = sk.SkillID and irv.InterviewerReviewID = skr.ReviewID
					join Skill skcat
					on sk.ParentID = skcat.SkillID
					for Json path
				))	as [SkillRating]
				from InterviewerReview irv
				join [User] u 
				on irv.UserID = u.UserID and i.InterviewID = irv.InterviewID
				join [Status] sir
				on irv.[Status] = sir.StatusID
				for Json path
			)) as [InterviewerReview]
			from Interview i
			join [Status] s
			on i.Result = s.StatusID
			join InterviewRound ird
			on i.InterviewRoundID = ird.InterviewRoundID and ap.ApplicantID = i.ApplicantID
			for Json path
		)) as [Interview]
		from Applicant ap
		join Designation d
		on ap.AppliedFor = d.DesignationID and ap.ApplicantID = @Id
End
GO

CREATE   PROC [dbo].[uspGetDesignation]
as
BEGIN
	Select DesignationID
		,Designation
	from Designation
END
GO

Create Proc [dbo].[uspGetInterviewer]
	@InterviewAt date
as
BEGIN
	Select u.[Name]
	from [User] u
	Where u.UserID not in (
					Select ir.UserID
	from InterviewerReview ir
		join Interview i
		on ir.InterviewID = i.InterviewID And i.InterviewAt = @InterviewAt
					)
End
GO

CREATE   PROC [dbo].[uspGetRoundId]
	@RoundOrder TINYINT
as
BEGIN
	DECLARE @RoundId TINYINT

	Select @RoundId = InterviewRoundID
	from InterviewRound
	Where RoundOrder = @RoundOrder

	RETURN @RoundId
End
GO


CREATE   PROC [dbo].[uspNextRound]
	@CurrentRoundId tinyint
as
BEGIN

	DECLARE @NextRound TINYINT
	DECLARE @NextRoundId TINYINT

	Select @NextRound = (RoundOrder+1)
	from InterviewRound i
	where InterviewRoundID = @CurrentRoundId

	EXEC @NextRoundId = uspGetRoundId @NextRound;

	RETURN @NextRoundId
END
GO



CREATE   PROC [dbo].[uspGetNextRoundId]
	@ApplicantId int,
	@InterviewId int
as
BEGIN
	Declare @CurrentRoundId int

	Select @CurrentRoundId = InterviewRoundID
	from Interview
	Where InterviewID = @InterviewId AND ApplicantID = @ApplicantId

	Declare @NextRoundId tinyint

	Exec @NextRoundId = uspNextRound @CurrentRoundId

	RETURN @NextRoundId
END 
GO

CREATE   PROC [dbo].[uspGetUser]
as
BEGIN
	Select UserID
		,[Name]
	from [User]
END
GO

CREATE   PROC [dbo].[uspPromoteApplicant]
	@ApplicantId int,
	@InterviewId int
as
BEGIN
	BEGIN TRY
    BEGIN TRAN Promote
        If(@ApplicantId is null OR @InterviewId is null)
        BEGIN
		RAISERROR('Id should not be null',16,6);
	END

        --Promote ( set status cleared)
        Update Interview
        Set Result = 3
        Where ApplicantID = @ApplicantId and InterviewID = @InterviewId

        If(@@ROWCOUNT = 0)
        BEGIN
		ROLLBACK TRAN Promote
		RAISERROR('Promote failed',16,6)
	END

        --Get next round Id

        DECLARE @NextRoundId TINYINT

        EXEC @NextRoundId = uspGetNextRoundId @ApplicantId, @InterviewId;

        --Insert next round deatils into the Interview Table

        Insert Into Interview
		(ApplicantID, InterviewRoundID,Result)
		Values
		(@ApplicantId, @NextRoundId, 1)

        If(@@ROWCOUNT = 0)
        BEGIN
		ROLLBACK TRAN Promote
		RAISERROR('Cannot assign next round',16,6)
		END
		Select 'Success'
        Commit TRAN Promote
    END TRY
    BEGIN CATCH
        ROLLBACK TRAN Promote
        
        DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		Select
		@ErrorMessage = ERROR_MESSAGE(),
		@ErrorSeverity = ERROR_SEVERITY(),
		@ErrorState = ERROR_STATE();

			RAISERROR (@ErrorMessage
						,@ErrorSeverity
						,@ErrorState
						);
	END CATCH
END
GO


CREATE   PROC [dbo].[uspAddApplicant]
	@UserId int
,
	@FirstName varchar(30)
,
	@LastName varchar(30)
,
	@LastEmployer nvarchar(20)
,
	@LastDesignation nvarchar(30)
,
	@AppliedFor int
,
	@ReferedBy int
,
	@MedicalStatus nvarchar(150)
,
	@NoticePeriod int
,
	@Resume VARCHAR(200)
as
BEGIN
	BEGIN TRY
		Begin Tran InsertApplicant
	
			Declare @NewApplicantId int
			Declare @FirstRoundId int

			Insert Into Applicant
		( FirstName
		,LastName
		,LastEmployer
		,LastDesignation
		,AppliedFor
		,ReferedBy
		,MedicalStatus
		,NoticePeriod
		,CreatedBy
		,CreatedOn
		,IsActive
		,IsDeleted
		,[Resume]
		)
	Values(@FirstName
									, @LastName
									, @LastEmployer
									, @LastDesignation
									, @AppliedFor
									, @ReferedBy
									, @MedicalStatus
									, @NoticePeriod
									, @UserId
									, GetDate()
									, 'true'
									, 'false'
									, @Resume
									)
	
			If (@@ROWCOUNT = 0)
			BEGIN
		ROLLBACK TRAN InsertApplicant;
		RAISERROR('Cannot add applicant',16,6)
			END
	
			Select @NewApplicantId = SCOPE_IDENTITY();

			Exec @FirstRoundId = uspGetRoundId 1;
	
			Insert Into Interview
		(ApplicantID, InterviewRoundID, Result)
	Values(@NewApplicantId, @FirstRoundId, 1);
	
			If (@@ROWCOUNT = 0)
			BEGIN
		ROLLBACK TRAN InsertApplicant;
		RAISERROR('Cannot assign Interview',16,6)
		END

		Select 'Success'
		Commit Tran InsertApplicant
	END TRY
	BEGIN CATCH

		RollBack Tran InsertApplicant

	    DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		Select
		@ErrorMessage = ERROR_MESSAGE(),
		@ErrorSeverity = ERROR_SEVERITY(),
		@ErrorState = ERROR_STATE();

			RAISERROR (@ErrorMessage
						,@ErrorSeverity
						,@ErrorState
						);
	END CATCH
END
GO
