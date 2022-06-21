Use InterviewManagementSystem
Go

	CREATE OR ALTER PROC uspGetApplicantById
	@Id int
	as
	Begin

		If (@Id is not null)
		Begin
			Select ap.ApplicantID
			,(ap.FirstName + ' ' + ap.LastName) as 'Name'
			,d.Designation
			,ap.LastEmployer
			,ap.MedicalStatus
			,ap.NoticePeriod
			,i.InterviewID
			,i.InterviewRoundID
			,s.StatusType as 'Result'
			,ird.InterviewRoundName
			,irv.InterviewerReviewID
			,irv.UserID
			,u.[Name] as 'Interviewer Name'
			,irv.Pros
			,irv.Cons
			,irv.Comments
			,irv.[Status]
			,sk.ParentID as 'Skill Category Id'
			,skcat.[Name] as 'Skill Category Name'
			,sk.SkillID
			,sk.[Name]
			,skr.RatingID
			from Applicant ap
			join Interview i
			on ap.ApplicantID = i.ApplicantID And ap.ApplicantID = @Id
			join InterviewRound ird
			on i.InterviewRoundID = ird.InterviewRoundID
			join InterviewerReview irv
			on i.InterviewID = irv.InterviewID
			join [User] u
			on irv.UserID = u.UserID
			join SkillRating skr
			on irv.InterviewerReviewID = skr.ReviewID
			join Skill sk
			on skr.SkillID = sk.SkillID
			join Skill skcat
			on sk.ParentID = skcat.SkillID
			join Designation d
			on ap.AppliedFor = d.DesignationID
			join [Status] s
			on i.Result = s.StatusID
		End
		Else
		Begin
			Select 'Id should not be null'
		End
	End

	exec uspGetApplicantById 2
	Go

CREATE OR ALTER PROC uspGetApplicant
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
			Select i.InterviewRoundID
			,s.StatusType as [Result]
			,JSON_QUERY((
				Select ird.InterviewRoundName
				,JSON_QUERY((
					Select irv.InterviewerReviewID
							,irv.UserID
							,irv.Pros
							,irv.Cons
							,irv.Comments
							,irv.[Status]
							,JSON_QUERY((
								Select u.[Name] as 'Interviewer Name'
								,JSON_QUERY((
									Select skr.RatingID
									,JSON_QUERY((
										Select sk.SkillID
												,sk.[Name]
												,skcat.[Name] as 'Skill Category Name'
										from Skill sk
										join Skill skcat
										on sk.ParentID = skcat.SkillID AND skr.SkillID = sk.SkillID
										for json path
									)) as 'skill_rating'
									from SkillRating skr
									where irv.InterviewerReviewID = skr.ReviewID
									for json path
								)) as 'skill_rating'
									from [User] u
									where irv.UserID = u.UserID
									for json path
							)) as 'interviewer_name'
					from InterviewerReview irv
					where i.InterviewID = irv.InterviewID
					for json path
				)) as 'review'
				from InterviewRound ird
				where i.InterviewRoundID = ird.InterviewRoundID
				for json path
			)) as 'round_name'
			from Interview i
			join [Status] s
			on i.Result = s.StatusID
			Where ap.ApplicantID = i.ApplicantID
			for Json path
		)) as [Interview]
		from Applicant ap
		join Designation d
		on ap.AppliedFor = d.DesignationID and ap.ApplicantID = @Id
End
exec uspGetApplicant 1
Go

Create Proc uspGetInterviewerByDate
@date date
as
BEGIN 
	Select ir.UserID
	from InterviewerReview ir
	join Interview i
	on ir.InterviewID = i.InterviewID and i.InterviewAt = @date
End
	
exec uspGetInterviewerByDate '2021-09-20'
Go

Create Proc uspGetInterviewer
@date date
as
BEGIN 
	Select u.[Name]
	from [User] u
	Where u.UserID not in (
					Select ir.UserID
					from InterviewerReview ir
					join Interview i
					on ir.InterviewID = i.InterviewID And i.InterviewAt = @date
					)	
End

exec uspGetInterviewer '2021-09-20'
Go


-- Add Applicant

DECLARE @UserName VARCHAR(150)
EXEC uspGetReferedBy 2,@UserName OUTPUT
print @UserName
go



CREATE OR ALTER PROC uspAddApplicant
@UserId int
,@FirstName varchar(30)
,@LastName varchar(30)
,@LastEmployer nvarchar(20)
,@LastDesignation nvarchar(30)
,@AppliedFor int
,@ReferedBy int
,@MedicalStatus nvarchar(150)
,@NoticePeriod int
,@Resume VARCHAR(200)
as 
BEGIN
	BEGIN TRY
		Begin Tran InsertApplicant
	
			Declare @NewApplicantId int
			Declare @FirstRoundId int

			Insert Into Applicant( FirstName
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
									,@LastName
									,@LastEmployer
									,@LastDesignation
									,@AppliedFor
									,@ReferedBy
									,@MedicalStatus
									,@NoticePeriod
									,@UserId
									,GetDate()
									,'true'
									,'false'
									,@Resume
									)
	
			If (@@ROWCOUNT = 0)
			BEGIN
				ROLLBACK TRAN InsertApplicant;
				RAISERROR('Cannot add applicant',16,6)
			END
	
			Select @NewApplicantId = SCOPE_IDENTITY();

			Exec @FirstRoundId = uspGetRoundId 1;
	
			Insert Into Interview(ApplicantID, InterviewRoundID, Result)
			Values(@NewApplicantId, @FirstRoundId, 1);
	
			If (@@ROWCOUNT = 0)
			BEGIN
				ROLLBACK TRAN InsertApplicant;
				RAISERROR('Cannot assign Interview',16,6)
			END

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

exec uspAddApplicant 1,'Hannah','Baker','ABC Company','Dev', 2, '',2, 1, 'hello' ;
Go


-- Promote Applicant


CREATE OR ALTER PROC uspGetRoundId
@RoundOrder TINYINT
as
BEGIN
	DECLARE @RoundId TINYINT

	Select @RoundId = InterviewRoundID
	from InterviewRound
	Where RoundOrder = @RoundOrder

	RETURN @RoundId
End
Go

EXEC uspGetRoundId 3
Go

CREATE OR ALTER PROC uspNextRound
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
Go

EXEC uspNextRound 1
go


CREATE OR ALTER PROC uspGetNextRoundId
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
Go

EXEC uspGetNextRoundId 9,32
Go


CREATE OR ALTER PROC uspPromoteApplicant
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

        Insert Into Interview(ApplicantID, InterviewRoundID)
        Values (@ApplicantId, @NextRoundId)

        If(@@ROWCOUNT = 0)
        BEGIN   
            ROLLBACK TRAN Promote
            RAISERROR('Cannot assign next round',16,6)
        END
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


EXEC uspPromoteApplicant 9,32
Go

--Edit Applicant


CREATE OR ALTER PROC uspUpdateApplicant
@ApplicantId int
,@UserId int
,@FirstName nvarchar(24)
,@LastName nvarchar(24)
,@LastEmployer nvarchar(50)
,@LastDesignation nvarchar(20)
,@AppliedFor int
,@ReferedBy int
,@MedicalStatus nvarchar(150)
,@NoticePeriod int
as 
BEGIN
	BEGIN TRY	
			Declare @NewApplicantId int
			Declare @FirstRoundId int

            UPDATE Applicant
            SET FirstName = @FirstName
                ,LastName = @LastName
                ,LastEmployer = @LastEmployer
                ,LastDesignation = @LastDesignation
                ,AppliedFor = @AppliedFor
                ,ReferedBy = @ReferedBy
                ,MedicalStatus = @MedicalStatus
                ,NoticePeriod = @NoticePeriod
                ,ModifiedBY = @UserId
                ,ModifiedOn = GETDATE()
            Where ApplicantID = @ApplicantId
	
			If (@@ROWCOUNT = 0)
			BEGIN
				RAISERROR('Cannot add applicant',16,6)
			END

	END TRY
	BEGIN CATCH

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

exec uspUpdateApplicant 9,2,'Tomato','Veg','ABC Company','Juoir Developer',1,'Null',1
Go