USE [InterviewManagement]
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicant](
	[ApplicantID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](24) NULL,
	[LastName] [nvarchar](24) NULL,
	[LastEmployer] [nvarchar](50) NULL,
	[LastDesignation] [nvarchar](20) NULL,
	[AppliedFor] [int] NULL,
	[ReferedBy] [nvarchar](150) NULL,
	[MedicalStatus] [nvarchar](500) NULL,
	[NoticePeriod] [int] NULL,
	[Resume] [varchar](200) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBY] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationID] [int] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](20) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interview]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
	[InterviewID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NULL,
	[InterviewRoundID] [tinyint] NULL,
	[Date] [datetime] NULL,
	[Result] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterviewerReview]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterviewerReview](
	[InterviewerReviewID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[InterviewID] [int] NULL,
	[Pros] [nvarchar](500) NULL,
	[Cons] [nvarchar](500) NULL,
	[Comments] [nvarchar](1000) NULL,
	[Status] [tinyint] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewerReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterviewRound]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterviewRound](
	[InterviewRoundID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoundOrder] [tinyint] NULL,
	[InterviewRoundName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewRoundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[Value] [int] NULL,
	[Category] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[ParentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillRating]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillRating](
	[SkillRatingID] [int] IDENTITY(1,1) NOT NULL,
	[ReviewID] [int] NULL,
	[SkillID] [int] NULL,
	[RatingID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillRatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StatusType] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 08-11-2021 12:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NULL,
	[UserID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Applicant] ON 

INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'Potato', N'Hazel', N'Abc Company', N'Full Stack Developer', 1, N'Vishwa', NULL, 3, NULL, 4, CAST(N'2021-09-20T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([DesignationID], [Designation], [IsActive]) VALUES (1, N'Full Stack Developer', 1)
INSERT [dbo].[Designation] ([DesignationID], [Designation], [IsActive]) VALUES (2, N'Integration', 1)
SET IDENTITY_INSERT [dbo].[Designation] OFF
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
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (27, 6, 6, CAST(N'2021-10-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (28, 7, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (29, 7, 3, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (30, 7, 4, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (31, 8, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (32, 9, 1, CAST(N'2021-10-03T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Interview] OFF
GO
SET IDENTITY_INSERT [dbo].[InterviewRound] ON 

INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (1, 1, N'Profile Screening')
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (3, 2, N'Initial Telephonic Interview')
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (4, 3, N'Technical Telephonic Interview')
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (5, 4, N'Technical System Test')
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (6, 5, N'Technical F2F Interview')
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (7, 6, N'Final F2F')
SET IDENTITY_INSERT [dbo].[InterviewRound] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (1, N'Hr')
INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (2, N'Interviewer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [StatusType]) VALUES (1, N'Pending')
INSERT [dbo].[Status] ([StatusID], [StatusType]) VALUES (2, N'Rejected')
INSERT [dbo].[Status] ([StatusID], [StatusType]) VALUES (3, N'Cleared')
SET IDENTITY_INSERT [dbo].[Status] OFF
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
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD FOREIGN KEY([AppliedFor])
REFERENCES [dbo].[Designation] ([DesignationID])
GO
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicant] ([ApplicantID])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD FOREIGN KEY([InterviewRoundID])
REFERENCES [dbo].[InterviewRound] ([InterviewRoundID])
GO
ALTER TABLE [dbo].[Interview]  WITH CHECK ADD FOREIGN KEY([Result])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[InterviewerReview]  WITH CHECK ADD FOREIGN KEY([InterviewID])
REFERENCES [dbo].[Interview] ([InterviewID])
GO
ALTER TABLE [dbo].[InterviewerReview]  WITH CHECK ADD FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[InterviewerReview]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD FOREIGN KEY([ParentID])
REFERENCES [dbo].[Skill] ([SkillID])
GO
ALTER TABLE [dbo].[SkillRating]  WITH CHECK ADD FOREIGN KEY([RatingID])
REFERENCES [dbo].[Rating] ([RatingID])
GO
ALTER TABLE [dbo].[SkillRating]  WITH CHECK ADD FOREIGN KEY([ReviewID])
REFERENCES [dbo].[InterviewerReview] ([InterviewerReviewID])
GO
ALTER TABLE [dbo].[SkillRating]  WITH CHECK ADD FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([SkillID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
