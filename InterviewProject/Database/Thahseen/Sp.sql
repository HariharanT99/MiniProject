Use InterviewManagement
Go


CREATE PROC uspGetApplicantById
@Id int
as
Begin
	--Begin TRY
	--	If (@Id Is Null)
	--	Begin
	--		--RaiseError('Id should not be Null')
	--	END
	--END TRY
	If (@Id is not null)
	Begin
		Select ap.ApplicantID
		,(ap.FirstName + ' ' + ap.LastName) as 'Name'
		,ap.AppliedFor
		,ap.LastEmployer
		,ap.MedicalStatus
		,ap.NoticePeriod
		,i.InterviewID
		,i.InterviewRoundID
		,i.Result
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
	End
	Else
	Begin
		Select 'Id should not be null'
	End
End

exec uspGetApplicantById 2
Go




CREATE PROC uspGetApplicant
@Id int
as
Begin
		Select ap.ApplicantID
		,(ap.FirstName + ' ' + ap.LastName) as 'Name'
		,ap.AppliedFor
		,ap.LastEmployer
		,ap.MedicalStatus
		,ap.NoticePeriod
		,JSON_QUERY((
			Select i.InterviewRoundID
			,i.Result
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
			Where ap.ApplicantID = i.ApplicantID
			for Json path
		)) as ['round']
		from Applicant ap
		Where ap.ApplicantID = @Id
End
exec uspGetApplicant 1
Go