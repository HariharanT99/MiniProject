
SET IDENTITY_INSERT [dbo].[Designation] ON

INSERT [dbo].[Designation] ([DesignationID], [Designation], [IsActive]) VALUES (1, N'Full Stack Developer', 1)
INSERT [dbo].[Designation] ([DesignationID], [Designation], [IsActive]) VALUES (2, N'Integration', 1)
SET IDENTITY_INSERT [dbo].[Designation] OFF
GO


SET IDENTITY_INSERT [dbo].[Applicant] ON



INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'Potato', N'Hazel', N'Abc Company', N'Full Stack Developer', 1, N'Vishwa', NULL, 3, NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (2, N'Brinjal', N'Helwet', N'XYZ Company', N'Senior Developer', 1, N'Geetha', NULL, 2, NULL, 4, CAST(N'2021-09-20T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (3, N'PineApple', N'Coste', N'ASD Company', N'Junior Developer', 1, N'Philip', NULL, 1, NULL, 4, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (4, N'Cabbage', N'Zebronic', N'XCV Company', N'Developer', 2, N'Veena', NULL, 2, NULL, 4, CAST(N'2021-09-25T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (5, N'Carrot', N'Nike', N'QWE Company', N'Developer', 1, N'Philip', NULL, 2, NULL, 4, CAST(N'2021-09-28T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (6, N'Pumpkin', N'Mac', N'JKL Company', N'Senior Developer', 1, N'Vishwa', NULL, 2, NULL, 4, CAST(N'2021-09-28T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (7, N'Raddish', N'BOULT', N'BNM Company', N'Senior Developer', 1, NULL, NULL, 2, NULL, 4, CAST(N'2021-09-30T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (8, N'BeetRoot', N'NOISEE', N'FGH Company', N'Developer', 1, NULL, NULL, 2, NULL, 4, CAST(N'2021-10-02T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (9, N'Bean', N'ProBook', N'XYZ Company', N'Senior Developer', 1, N'Geetha', NULL, 2, NULL, 4, CAST(N'2021-10-03T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Applicant] OFF
GO

SET IDENTITY_INSERT [dbo].[Role] ON


INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (1, N'Hr')
INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (2, N'Interviewer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON



INSERT [dbo].[User] ([UserID], [Name]) VALUES (1, N'Thahseen')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (2, N'HariHaran')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (3, N'Vijay')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (4, N'Yukesh')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (5, N'Reshma')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (6, N'Vasundhara')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (7, N'SriVidhya')
INSERT [dbo].[User] ([UserID], [Name]) VALUES (8, N'Nasurudheen')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON



INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (1, 2, 1)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (2, 2, 2)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (3, 2, 3)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (4, 1, 4)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (5, 1, 5)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (6, 2, 6)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (7, 2, 7)
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (8, 2, 8)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO


Insert [dbo].[Skill]([Name], ParentID)
Values ('Technical Skill', Null),
		('Soft Skill', Null),
		('Concept', 1),
		('Technical', 1),
		('Domain', 1),
		('Analytical', 1),
		('Communication', 2),
		('Aptitude', 2),
		('Leadership', 2),
		('Attitude', 2);

Insert [dbo].[Rating](Category, [Value])
Values ('Below Satisfactory',1),
('Satisfactory',2),
('Good',3),
('Very Good',4),
('Excellent',5);

USE [InterviewManagement]
GO
SET IDENTITY_INSERT [dbo].[Interview] ON 

INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (1, 1, 1, CAST(N'2021-09-20T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (2, 2, 1, CAST(N'2021-09-20T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (5, 1, 3, CAST(N'2021-09-22T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (6, 1, 4, CAST(N'2021-09-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (7, 1, 5, CAST(N'2021-09-26T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (9, 2, 3, CAST(N'2021-09-21T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (10, 3, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (11, 3, 3, CAST(N'2021-09-26T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (12, 3, 4, CAST(N'2021-09-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (13, 3, 5, CAST(N'2021-09-29T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (14, 3, 6, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (15, 3, 7, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (16, 4, 1, CAST(N'2021-09-25T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (17, 5, 1, CAST(N'2021-09-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (21, 5, 3, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (22, 5, 4, CAST(N'2021-10-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (23, 6, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (24, 6, 3, CAST(N'2021-10-03T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (25, 6, 4, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (26, 6, 5, CAST(N'2021-10-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (27, 6, 6, NULL, 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (28, 7, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (29, 7, 3, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (30, 7, 4, NULL, 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (31, 8, 1, NULL, 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (32, 9, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Interview] OFF
GO

