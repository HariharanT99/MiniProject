USE [InterviewManagementSystem]
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicant](
	[ApplicantID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NOT NULL,
	[LastName] [varchar](30) NOT NULL,
	[LastEmployer] [varchar](30) NOT NULL,
	[LastDesignation] [varchar](30) NOT NULL,
	[AppliedFor] [tinyint] NOT NULL,
	[ReferedBy] [int] NULL,
	[MedicalStatus] [varchar](100) NULL,
	[NoticePeriod] [int] NOT NULL,
	[Resume] [nvarchar](200) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBY] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[DesignationID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Designation] [varchar](30) NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Interview]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
	[InterviewID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NOT NULL,
	[InterviewRoundID] [tinyint] NOT NULL,
	[InterviewAt] [datetime] NULL,
	[Result] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterviewerReview]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterviewerReview](
	[InterviewerReviewID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[InterviewID] [int] NOT NULL,
	[Pros] [varchar](500) NULL,
	[Cons] [varchar](500) NULL,
	[Comments] [varchar](1000) NULL,
	[Status] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewerReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterviewRound]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterviewRound](
	[InterviewRoundID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoundOrder] [tinyint] NOT NULL,
	[InterviewRoundName] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewRoundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[RatingID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Value] [tinyint] NOT NULL,
	[Category] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[ParentID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillRating]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillRating](
	[SkillRatingID] [int] IDENTITY(1,1) NOT NULL,
	[ReviewID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
	[RatingID] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SkillRatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StatusType] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [tinyint] NOT NULL,
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Applicant] ON 
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'Potato', N'PO', N'string', N'string', 1, 2, NULL, 3, N'hello', 4, CAST(N'2021-09-20T00:00:00.000' AS DateTime), 5, CAST(N'2021-11-12T11:20:13.550' AS DateTime), 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (2, N'Brinjal', N'Helwet', N'XYZ Company', N'Senior Developer', 1, 2, NULL, 2, N'hello', 4, CAST(N'2021-09-20T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (3, N'PineApple', N'Coste', N'ASD Company', N'Junior Developer', 1, 1, NULL, 1, N'hello', 4, CAST(N'2021-09-24T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (4, N'Cabbage', N'Zebronic', N'XCV Company', N'Developer', 2, 2, NULL, 2, N'hello', 4, CAST(N'2021-09-25T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (5, N'Carrot', N'Nike', N'QWE Company', N'Developer', 1, 3, NULL, 2, N'hello', 4, CAST(N'2021-09-28T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (6, N'Pumpkin', N'Mac', N'JKL Company', N'Senior Developer', 1, NULL, NULL, 2, N'hello', 4, CAST(N'2021-09-28T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (7, N'Raddish', N'BOULT', N'BNM Company', N'Senior Developer', 1, NULL, NULL, 2, N'hello', 4, CAST(N'2021-09-30T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (8, N'BeetRoot', N'NOISEE', N'FGH Company', N'Developer', 1, NULL, NULL, 2, N'hello', 4, CAST(N'2021-10-02T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (9, N'Bean', N'ProBook', N'XYZ Company', N'Senior Developer', 1, 5, NULL, 2, N'hello', 4, CAST(N'2021-10-03T00:00:00.000' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (10, N'Hariharan', N'Tamil', N'ABC company', N'Developer', 1, 4, N'', 1, N'C:\fakepath\Hariharan_Vaccination_Certificate.pdf', 1, CAST(N'2021-11-23T10:08:29.500' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (11, N'Hariharan', N'Tamil', N'ABC company', N'Developer', 1, 4, N'', 1, N'C:\fakepath\Hariharan_Vaccination_Certificate.pdf', 1, CAST(N'2021-11-23T10:08:54.830' AS DateTime), NULL, NULL, 1, 0)
GO
INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (12, N'Ram', N'K', N'TCS', N'Junior Developer', 1, 3, N'', 2, N'C:\fakepath\Hariharan_Vaccination_Certificate.pdf', 1, CAST(N'2021-11-23T10:16:19.527' AS DateTime), NULL, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Applicant] OFF
GO
SET IDENTITY_INSERT [dbo].[Designation] ON 
GO
INSERT [dbo].[Designation] ([DesignationID], [Designation], [IsActive]) VALUES (1, N'Full Stack Developer', 1)
GO
INSERT [dbo].[Designation] ([DesignationID], [Designation], [IsActive]) VALUES (2, N'Integration', 1)
GO
SET IDENTITY_INSERT [dbo].[Designation] OFF
GO
SET IDENTITY_INSERT [dbo].[Interview] ON 
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (1, 1, 1, CAST(N'2021-09-20T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (2, 2, 1, NULL, 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (5, 1, 3, CAST(N'2021-09-22T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (6, 1, 4, CAST(N'2021-09-24T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (7, 1, 5, CAST(N'2021-09-26T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (9, 2, 3, CAST(N'2021-09-21T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (10, 3, 1, CAST(N'2021-09-24T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (11, 3, 3, CAST(N'2021-09-26T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (12, 3, 4, CAST(N'2021-09-28T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (13, 3, 5, CAST(N'2021-09-29T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (14, 3, 6, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (15, 3, 7, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (16, 4, 1, CAST(N'2021-09-25T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (17, 5, 1, CAST(N'2021-09-28T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (21, 5, 3, CAST(N'2021-09-30T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (22, 5, 4, CAST(N'2021-10-01T00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (23, 6, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (24, 6, 3, CAST(N'2021-10-03T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (25, 6, 4, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (26, 6, 5, CAST(N'2021-10-08T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (27, 6, 6, CAST(N'2021-11-25T10:27:18.767' AS DateTime), 2)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (28, 7, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (29, 7, 3, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (30, 7, 4, NULL, 1)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (31, 8, 1, CAST(N'2021-12-01T10:30:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (32, 9, 1, CAST(N'2021-12-12T14:35:00.000' AS DateTime), 1)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (33, 10, 1, NULL, 1)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (34, 11, 1, NULL, 1)
GO
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [InterviewAt], [Result]) VALUES (35, 12, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Interview] OFF
GO
SET IDENTITY_INSERT [dbo].[InterviewerReview] ON 
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (1, 1, 15, N'good', N'bad', N'nothing', 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (2, 2, 15, N'good', N'bad', N'nothin', 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (3, 3, 16, N'Very Good', N'nothing ', N'nothing', 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (4, 6, 17, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (5, 7, 21, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (6, 8, 22, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (7, 1, 23, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (8, 2, 24, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (9, 3, 25, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (10, 6, 26, N'Very good critical thinking', NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (11, 7, 26, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (13, 1, 28, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (14, 2, 29, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (15, 3, 30, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (16, 5, 31, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (17, 6, 32, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (18, 4, 1, N'Good logical skill', N'', N'Have to improve problem solving skill', 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (19, 3, 2, N'Good attitude', NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (20, 1, 14, N'', NULL, NULL, 2, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (21, 3, 13, NULL, NULL, NULL, 2, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (22, 6, 12, N'Good attitude', NULL, N'Have to improve problem solving skill', 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (23, 4, 11, N'Good logical skill', NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (26, 7, 5, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (27, 8, 6, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (29, 1, 7, NULL, NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (30, 2, 9, N'Good attitude', NULL, N'Have to improve problem solving skill', 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (31, 4, 10, N'Good logical skill', NULL, NULL, 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (33, 2, 12, N'Better Logical skill', NULL, N'Overall performance is good', 3, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (53, 3, 27, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (54, 2, 27, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (55, 1, 27, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (56, 6, 27, NULL, NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[InterviewerReview] OFF
GO
SET IDENTITY_INSERT [dbo].[InterviewRound] ON 
GO
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (1, 1, N'Profile Screening')
GO
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (3, 2, N'Initial Telephonic Interview')
GO
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (4, 3, N'Technical Telephonic Interview')
GO
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (5, 4, N'Technical System Test')
GO
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (6, 5, N'Technical F2F Interview')
GO
INSERT [dbo].[InterviewRound] ([InterviewRoundID], [RoundOrder], [InterviewRoundName]) VALUES (7, 6, N'Final F2F')
GO
SET IDENTITY_INSERT [dbo].[InterviewRound] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 
GO
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (1, 1, N'Below Satisfactory')
GO
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (2, 2, N'Satisfactory')
GO
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (3, 3, N'Good')
GO
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (4, 4, N'Very Good')
GO
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (5, 5, N'Excellent')
GO
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (1, N'Hr')
GO
INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (2, N'Interviewer')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (1, N'Technical Skill', NULL)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (2, N'Soft Skill', NULL)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (3, N'Concept', 1)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (4, N'Technical', 1)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (5, N'Domain', 1)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (6, N'Analytical', 1)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (7, N'Communication', 2)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (8, N'Aptitude', 2)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (9, N'Leadership', 2)
GO
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (10, N'Attitude', 2)
GO
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillRating] ON 
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (1, 1, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (2, 1, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (3, 1, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (4, 1, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (5, 1, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (6, 1, 8, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (7, 1, 9, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (8, 1, 10, 5)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (9, 2, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (10, 2, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (11, 2, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (12, 2, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (13, 2, 7, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (14, 2, 8, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (15, 2, 9, 5)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (16, 2, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (17, 3, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (18, 3, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (19, 3, 5, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (20, 3, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (21, 3, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (22, 3, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (23, 3, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (24, 3, 10, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (26, 4, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (27, 4, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (28, 4, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (29, 4, 6, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (30, 4, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (31, 4, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (32, 4, 9, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (33, 4, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (34, 5, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (35, 5, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (36, 5, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (37, 5, 6, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (38, 5, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (39, 5, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (40, 5, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (41, 5, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (42, 6, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (43, 6, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (44, 6, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (45, 6, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (46, 6, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (47, 6, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (48, 6, 9, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (49, 6, 10, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (50, 7, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (51, 7, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (52, 7, 5, 5)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (53, 7, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (54, 7, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (55, 7, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (56, 7, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (57, 7, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (58, 8, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (59, 8, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (60, 8, 5, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (61, 8, 6, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (62, 8, 7, 5)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (63, 8, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (64, 8, 9, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (65, 8, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (66, 9, 3, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (67, 9, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (68, 9, 5, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (69, 9, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (70, 9, 7, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (71, 9, 8, 5)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (72, 9, 9, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (73, 9, 10, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (74, 10, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (75, 10, 4, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (76, 10, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (77, 10, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (78, 10, 7, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (79, 10, 8, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (80, 10, 9, 5)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (81, 10, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (82, 11, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (83, 11, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (84, 11, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (85, 11, 6, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (86, 11, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (87, 11, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (88, 11, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (89, 11, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (98, 13, 3, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (99, 13, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (100, 13, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (101, 13, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (102, 13, 7, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (103, 13, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (104, 13, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (105, 13, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (106, 14, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (107, 14, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (108, 14, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (109, 14, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (110, 14, 7, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (111, 14, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (112, 14, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (113, 14, 10, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (114, 15, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (115, 15, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (116, 15, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (117, 15, 6, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (118, 15, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (119, 15, 8, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (120, 15, 9, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (121, 15, 10, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (122, 16, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (123, 16, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (124, 16, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (125, 16, 6, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (126, 16, 7, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (127, 16, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (128, 16, 9, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (129, 16, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (130, 17, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (131, 17, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (132, 17, 5, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (133, 17, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (134, 17, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (135, 17, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (136, 17, 9, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (137, 17, 10, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (138, 18, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (139, 18, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (140, 18, 5, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (141, 18, 6, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (142, 18, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (143, 19, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (144, 19, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (145, 19, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (146, 19, 8, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (147, 19, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (148, 20, 10, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (149, 20, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (150, 20, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (151, 20, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (152, 20, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (153, 21, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (154, 21, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (155, 21, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (156, 21, 3, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (157, 21, 2, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (158, 22, 1, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (159, 22, 2, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (160, 22, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (161, 22, 4, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (162, 22, 5, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (163, 23, 6, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (164, 23, 7, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (165, 23, 8, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (166, 23, 9, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (167, 23, 10, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (170, 26, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (171, 26, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (172, 26, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (173, 26, 8, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (174, 26, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (175, 27, 10, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (176, 27, 9, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (177, 27, 8, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (178, 27, 7, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (179, 27, 6, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (181, 29, 5, 1)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (182, 29, 4, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (183, 29, 3, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (184, 29, 2, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (185, 29, 1, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (186, 30, 1, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (187, 30, 2, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (188, 30, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (189, 30, 4, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (190, 30, 5, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (191, 31, 10, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (192, 31, 9, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (193, 31, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (194, 31, 7, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (195, 31, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (196, 33, 5, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (197, 33, 4, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (198, 33, 3, 2)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (199, 33, 2, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (200, 33, 1, 4)
GO
SET IDENTITY_INSERT [dbo].[SkillRating] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 
GO
INSERT [dbo].[Status] ([StatusID], [StatusType]) VALUES (1, N'Pending')
GO
INSERT [dbo].[Status] ([StatusID], [StatusType]) VALUES (2, N'Rejected')
GO
INSERT [dbo].[Status] ([StatusID], [StatusType]) VALUES (3, N'Cleared')
GO
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (1, N'Thahseen')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (2, N'HariHaran')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (3, N'Vijay')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (4, N'Yukesh')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (5, N'Reshma')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (6, N'Vasundhara')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (7, N'SriVidhya')
GO
INSERT [dbo].[User] ([UserID], [Name]) VALUES (8, N'Nasurudheen')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (1, 2, 1)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (2, 2, 2)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (3, 2, 3)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (4, 1, 4)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (5, 1, 5)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (6, 2, 6)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (7, 2, 7)
GO
INSERT [dbo].[UserRole] ([UserRoleID], [RoleID], [UserID]) VALUES (8, 2, 8)
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD FOREIGN KEY([AppliedFor])
REFERENCES [dbo].[Designation] ([DesignationID])
GO
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Applicant]  WITH CHECK ADD FOREIGN KEY([ReferedBy])
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
/****** Object:  StoredProcedure [dbo].[spAddInterviewer]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spAddInterviewer]
    @InterviewId INT,
    @UserIdList NVARCHAR(max)
AS
BEGIN

    BEGIN TRY

        DECLARE @UserIdTable TABLE(
            RowId INT IDENTITY(1,1),
            UserId INT
        )

        DECLARE @RowCount INT;
        DECLARE @UserId INT;
        DECLARE @IsInterviewScheduled BIT;
        DECLARE @IsUserFound BIT;

        EXEC @IsInterviewScheduled = spCheckInterviewScheduled @InterviewId

        IF (@IsInterviewScheduled = 0)
            RAISERROR('Interview is not scheduled',16,1)

        INSERT INTO @UserIdTable(UserId)
        SELECT *
        FROM STRING_SPLIT(@UserIdList,',')

        SELECT @RowCount = COUNT(UserId)
        FROM @UserIdTable

        BEGIN TRAN AddInterviewer

        WHILE @RowCount > 0 
        BEGIN

            SELECT @UserId = UserId 
            FROM @UserIdTable
            WHERE RowId = @RowCount

            EXEC @IsUserFound = spCheckUserAvailable @InterviewId,@UserId

            IF(@IsUserFound = 1)
                RAISERROR('some user are not free today',16,1)

            INSERT INTO InterviewerReview(InterviewId,UserId,[Status],isActive) 
            VALUES(@InterviewId,@UserId,1,1)

            PRINT @UserId

            SET @RowCount = @RowCount - 1

        END

        COMMIT TRAN AddInterviewer;

        SELECT 'Success'

    END TRY
    
    BEGIN CATCH

        ROLLBACK TRAN AddInterviewer
    
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage,
                @ErrorSeverity,
                @ErrorState
                );
    END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[spCheckInterviewScheduled]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- EXEC spUpdateInterviewDate '2021-10-10 10:30:00',27

-- TO check whether the interview is scheduled or not

CREATE   PROCEDURE [dbo].[spCheckInterviewScheduled]
    @InterviewId INT
AS
BEGIN

    DECLARE @IsScheduled BIT

    SET @IsScheduled = 0

    select @IsScheduled = 1
    from interview
    where InterviewId = @InterviewId AND [InterviewAt] IS NOT NULL

    RETURN @IsScheduled

END
GO
/****** Object:  StoredProcedure [dbo].[spCheckUserAvailable]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- To check whether the user is present or not 

CREATE   PROCEDURE [dbo].[spCheckUserAvailable]
    @InterviewId INT,
    @UserId INT
AS
BEGIN

    DECLARE @RowCount INT
    DECLARE @CurrentInterviewId INT
    DECLARE @IsUserPresent BIT

    DECLARE @InterviewIdTable TABLE(
        RowId INT IDENTITY(1,1),
        InterviewId INT
    )

    DECLARE @UserIdTable TABLE(
        RowId INT IDENTITY(1,1),
        UserId INT
    )

    INSERT INTO @InterviewIdTable(InterviewId)  
        SELECT InterviewId 
        FROM Interview 
        WHERE [InterviewAt] = (
            SELECT [InterviewAt]
            FROM Interview 
            WHERE InterviewID = @InterviewId
        )

    SELECT @RowCount = COUNT(InterviewId) 
    FROM @InterviewIdTable

    WHILE(@RowCount > 0)
    BEGIN

        SELECT @CurrentInterviewId = InterviewId FROM @InterviewIdTable WHERE RowId = @RowCount

        PRINT @CurrentInterviewId

        INSERT INTO @UserIdTable(UserID) 
            SELECT UserId 
            FROM InterviewerReview
            WHERE InterviewId = @CurrentInterviewId

        SET @RowCount = @RowCount - 1
        
    END

    SET @IsUserPresent = 0

    SELECT @IsUserPresent=1 FROM @UserIdTable WHERE UserId = @UserId

    PRINT @IsUserPresent

    RETURN @IsUserPresent

END

-- EXEC spCheckUserAvailable 15,5
GO
/****** Object:  StoredProcedure [dbo].[spGetAllCandidate]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spGetAllCandidate]
AS
BEGIN

    with
        TempTable(applicant_id, max_roundID)
        as
        (
            select i.ApplicantID, max(i.InterviewRoundID) as 'RoundId'
            from Interview i
            group by (i.ApplicantID)
        )
    select A.ApplicantID, CONCAT(A.FirstName,' ',A.LastName) AS ApplicantName, D.Designation as AppliedFor, IRound.[RoundOrder] as CurrentRound, I.InterviewID, I.[InterviewAt] as InterviewAt, S.StatusType as [Status], A.CreatedOn
    from TempTable tt
        join Interview I
        on I.ApplicantID = tt.applicant_id and tt.max_roundID = I.InterviewRoundID
        INNER JOIN Applicant A ON A.ApplicantID = tt.applicant_id
        INNER JOIN Designation D ON D.DesignationID = A.AppliedFor
        INNER JOIN InterviewRound IRound ON IRound.InterviewRoundID = I.InterviewRoundID
        JOIN STATUS S ON S.StatusID = I.Result;

    with
        TempTable(applicant_id, max_round)
        as
        (
            select i.ApplicantID, max(i.InterviewRoundID) as 'RoundId'
            from Interview i
            group by (i.ApplicantID)
        )
    select I.ApplicantId, U.Name As InterviewerName
    from TempTable tt
        join Interview i on i.ApplicantID = tt.applicant_id and tt.max_round = i.InterviewRoundID
        LEFT join InterviewerReview IR ON IR.InterviewID = I.InterviewID
        LEFT JOIN [User] U ON U.UserID = IR.InterviewerReviewID
END
GO
/****** Object:  StoredProcedure [dbo].[spGetInterviewer]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spGetInterviewer]
    @InterviewId INT
AS
BEGIN

    with
        TempTable(applicant_id, max_round)
        as
        (
            select i.ApplicantID, max(i.InterviewRoundID) as 'RoundId'
            from Interview i
            group by (i.ApplicantID)
        )
    select U.Name
    from TempTable tt
        join Interview i on i.ApplicantID = tt.applicant_id and tt.max_round = i.InterviewRoundID
        inner join InterviewerReview IR ON IR.InterviewID = I.InterviewID
        JOIN [User] U ON U.UserID = IR.InterviewerReviewID
    WHERE I.InterviewID = @InterviewId

END
GO
/****** Object:  StoredProcedure [dbo].[spRejectCandidate]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spRejectCandidate]
    @InterviewId INT
AS
BEGIN

    DECLARE @StatusId TINYINT

    SELECT @StatusId = StatusId
    FROM [Status]
    WHERE StatusType = 'rejected'

    UPDATE Interview SET Result = @StatusId WHERE InterviewId = @InterviewId

    if(@@ROWCOUNT > 0)
        SELECT 'Success'
    
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateInterviewDate]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spUpdateInterviewDate]
    @InterviewId INT,
    @InterviewAt DATETIME
AS
BEGIN

    UPDATE Interview SET [InterviewAt]=@InterviewAt WHERE InterviewId = @InterviewId

    if(@@ROWCOUNT > 0)
        SELECT 'Success'

END
GO
/****** Object:  StoredProcedure [dbo].[uspAddApplicant]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROC [dbo].[uspAddApplicant]
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
/****** Object:  StoredProcedure [dbo].[uspGetApplicant]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROC [dbo].[uspGetApplicant]
    @Id int
as
Begin
    Select ap.ApplicantID
		, (ap.FirstName + ' ' + ap.LastName) as 'Name'
		, d.Designation
		, ap.LastEmployer
		, ap.MedicalStatus
		, ap.NoticePeriod
		, JSON_QUERY((
			Select i.InterviewID
			, i.InterviewRoundID
			, ird.InterviewRoundName
			, s.StatusType as [Status]
			, JSON_QUERY((
				Select irv.InterviewerReviewID
				, irv.UserID as [InterviewerID]
				, u.[Name] as [InterviewerName]
				, irv.Pros
				, irv.Cons
				, irv.Comments
				, sir.[StatusType] as [Result]
				, JSON_QUERY((
					Select skr.RatingID
					, sk.SkillID
					, sk.[Name] as [SkillName]
					, skcat.[Name] as [SkillCategoryName]
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
/****** Object:  StoredProcedure [dbo].[uspGetDesignation]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROC [dbo].[uspGetDesignation]
as
BEGIN
    Select DesignationID
		, Designation
    from Designation
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetInterviewer]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create   Proc [dbo].[uspGetInterviewer]
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
/****** Object:  StoredProcedure [dbo].[uspGetNextRoundId]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE     PROC [dbo].[uspGetNextRoundId]
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
/****** Object:  StoredProcedure [dbo].[uspGetRoundId]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROC [dbo].[uspGetRoundId]
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
/****** Object:  StoredProcedure [dbo].[uspGetUser]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROC [dbo].[uspGetUser]
as
BEGIN
    Select UserID
		, [Name]
    from [User]
END
GO
/****** Object:  StoredProcedure [dbo].[uspNextRound]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE     PROC [dbo].[uspNextRound]
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
/****** Object:  StoredProcedure [dbo].[uspPromoteApplicant]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE     PROC [dbo].[uspPromoteApplicant]
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
/****** Object:  StoredProcedure [dbo].[uspUpdateApplicant]    Script Date: 26-11-2021 16:20:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Edit Applicant


CREATE   PROC [dbo].[uspUpdateApplicant]
    @ApplicantId int
,
    @UserId int
,
    @FirstName nvarchar(24)
,
    @LastName nvarchar(24)
,
    @LastEmployer nvarchar(50)
,
    @LastDesignation nvarchar(20)
,
    @AppliedFor int
,
    @ReferedBy int
,
    @MedicalStatus nvarchar(150)
,
    @NoticePeriod int
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
                RAISERROR('Cannot add applicant',16,6)
            
            SELECT 'Success'

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

-- exec uspUpdateApplicant 9,2,'Tomato','Veg','ABC Company','Juoir Developer',1,'Null',1
GO
