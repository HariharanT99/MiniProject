USE [InterviewManagement]
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[Designation]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[Interview]    Script Date: 08-11-2021 13:59:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interview](
	[InterviewID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicantID] [int] NULL,
	[InterviewRoundID] [tinyint] NULL,
	[InterviewAt] [datetime] NULL,
	[Result] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[InterviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InterviewerReview]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[InterviewRound]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[SkillRating]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[Status]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 08-11-2021 13:59:53 ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 08-11-2021 13:59:53 ******/
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

INSERT [dbo].[Applicant] ([ApplicantID], [FirstName], [LastName], [LastEmployer], [LastDesignation], [AppliedFor], [ReferedBy], [MedicalStatus], [NoticePeriod], [Resume], [CreatedBy], [CreatedOn], [ModifiedBY], [ModifiedOn], [IsActive], [IsDeleted]) VALUES (1, N'Potato', N'Hazel', N'Abc Company', N'Full Stack Developer', 1, N'Vishwa', NULL, 3, NULL, 4, CAST(N'2021-09-20T00:00:00.000' AS DateTime), 5, CAST(N'2021-09-20T00:00:00.000' AS DateTime), 1, 0)
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
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (27, 6, 6, NULL, 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (28, 7, 1, CAST(N'2021-10-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (29, 7, 3, CAST(N'2021-10-05T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (30, 7, 4, NULL, 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (31, 8, 1, NULL, 1)
INSERT [dbo].[Interview] ([InterviewID], [ApplicantID], [InterviewRoundID], [Date], [Result]) VALUES (32, 9, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Interview] OFF
GO
SET IDENTITY_INSERT [dbo].[InterviewerReview] ON 

INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (1, 1, 15, N'good', N'bad', N'nothing', 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (2, 2, 15, N'good', N'bad', N'nothin', 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (3, 3, 16, N'Very Good', N'nothing ', N'nothing', 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (4, 6, 17, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (5, 7, 21, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (6, 8, 22, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (7, 1, 23, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (8, 2, 24, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (9, 3, 25, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (10, 6, 26, N'Very good critical thinking', NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (11, 7, 26, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (12, 8, 27, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (13, 1, 28, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (14, 2, 29, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (15, 3, 30, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (16, 5, 31, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (17, 6, 32, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (18, 4, 1, N'Good logical skill', N'', N'Have to improve problem solving skill', 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (19, 3, 2, N'Good attitude', NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (20, 1, 14, N'', NULL, NULL, 2, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (21, 3, 13, NULL, NULL, NULL, 2, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (22, 6, 12, N'Good attitude', NULL, N'Have to improve problem solving skill', 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (23, 4, 11, N'Good logical skill', NULL, NULL, 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (26, 7, 5, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (27, 8, 6, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (29, 1, 7, NULL, NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (30, 2, 9, N'Good attitude', NULL, N'Have to improve problem solving skill', 1, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (31, 4, 10, N'Good logical skill', NULL, NULL, 3, 1)
INSERT [dbo].[InterviewerReview] ([InterviewerReviewID], [UserID], [InterviewID], [Pros], [Cons], [Comments], [Status], [IsActive]) VALUES (33, 2, 12, N'Better Logical skill', NULL, N'Overall performance is good', 3, 1)
SET IDENTITY_INSERT [dbo].[InterviewerReview] OFF
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
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (1, 1, N'Below Satisfactory')
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (2, 2, N'Satisfactory')
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (3, 3, N'Good')
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (4, 4, N'Very Good')
INSERT [dbo].[Rating] ([RatingID], [Value], [Category]) VALUES (5, 5, N'Excellent')
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (1, N'Hr')
INSERT [dbo].[Role] ([RoleID], [Type]) VALUES (2, N'Interviewer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (1, N'Technical Skill', NULL)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (2, N'Soft Skill', NULL)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (3, N'Concept', 1)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (4, N'Technical', 1)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (5, N'Domain', 1)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (6, N'Analytical', 1)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (7, N'Communication', 2)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (8, N'Aptitude', 2)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (9, N'Leadership', 2)
INSERT [dbo].[Skill] ([SkillID], [Name], [ParentID]) VALUES (10, N'Attitude', 2)
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillRating] ON 

INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (1, 1, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (2, 1, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (3, 1, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (4, 1, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (5, 1, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (6, 1, 8, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (7, 1, 9, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (8, 1, 10, 5)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (9, 2, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (10, 2, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (11, 2, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (12, 2, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (13, 2, 7, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (14, 2, 8, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (15, 2, 9, 5)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (16, 2, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (17, 3, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (18, 3, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (19, 3, 5, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (20, 3, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (21, 3, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (22, 3, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (23, 3, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (24, 3, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (26, 4, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (27, 4, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (28, 4, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (29, 4, 6, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (30, 4, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (31, 4, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (32, 4, 9, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (33, 4, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (34, 5, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (35, 5, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (36, 5, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (37, 5, 6, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (38, 5, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (39, 5, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (40, 5, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (41, 5, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (42, 6, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (43, 6, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (44, 6, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (45, 6, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (46, 6, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (47, 6, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (48, 6, 9, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (49, 6, 10, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (50, 7, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (51, 7, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (52, 7, 5, 5)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (53, 7, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (54, 7, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (55, 7, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (56, 7, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (57, 7, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (58, 8, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (59, 8, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (60, 8, 5, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (61, 8, 6, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (62, 8, 7, 5)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (63, 8, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (64, 8, 9, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (65, 8, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (66, 9, 3, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (67, 9, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (68, 9, 5, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (69, 9, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (70, 9, 7, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (71, 9, 8, 5)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (72, 9, 9, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (73, 9, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (74, 10, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (75, 10, 4, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (76, 10, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (77, 10, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (78, 10, 7, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (79, 10, 8, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (80, 10, 9, 5)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (81, 10, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (82, 11, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (83, 11, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (84, 11, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (85, 11, 6, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (86, 11, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (87, 11, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (88, 11, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (89, 11, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (90, 12, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (91, 12, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (92, 12, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (93, 12, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (94, 12, 7, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (95, 12, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (96, 12, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (97, 12, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (98, 13, 3, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (99, 13, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (100, 13, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (101, 13, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (102, 13, 7, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (103, 13, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (104, 13, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (105, 13, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (106, 14, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (107, 14, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (108, 14, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (109, 14, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (110, 14, 7, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (111, 14, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (112, 14, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (113, 14, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (114, 15, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (115, 15, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (116, 15, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (117, 15, 6, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (118, 15, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (119, 15, 8, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (120, 15, 9, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (121, 15, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (122, 16, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (123, 16, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (124, 16, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (125, 16, 6, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (126, 16, 7, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (127, 16, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (128, 16, 9, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (129, 16, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (130, 17, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (131, 17, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (132, 17, 5, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (133, 17, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (134, 17, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (135, 17, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (136, 17, 9, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (137, 17, 10, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (138, 18, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (139, 18, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (140, 18, 5, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (141, 18, 6, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (142, 18, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (143, 19, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (144, 19, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (145, 19, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (146, 19, 8, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (147, 19, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (148, 20, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (149, 20, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (150, 20, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (151, 20, 4, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (152, 20, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (153, 21, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (154, 21, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (155, 21, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (156, 21, 3, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (157, 21, 2, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (158, 22, 1, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (159, 22, 2, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (160, 22, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (161, 22, 4, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (162, 22, 5, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (163, 23, 6, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (164, 23, 7, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (165, 23, 8, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (166, 23, 9, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (167, 23, 10, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (170, 26, 5, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (171, 26, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (172, 26, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (173, 26, 8, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (174, 26, 9, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (175, 27, 10, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (176, 27, 9, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (177, 27, 8, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (178, 27, 7, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (179, 27, 6, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (181, 29, 5, 1)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (182, 29, 4, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (183, 29, 3, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (184, 29, 2, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (185, 29, 1, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (186, 30, 1, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (187, 30, 2, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (188, 30, 3, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (189, 30, 4, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (190, 30, 5, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (191, 31, 10, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (192, 31, 9, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (193, 31, 8, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (194, 31, 7, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (195, 31, 6, 3)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (196, 33, 5, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (197, 33, 4, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (198, 33, 3, 2)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (199, 33, 2, 4)
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (200, 33, 1, 4)
SET IDENTITY_INSERT [dbo].[SkillRating] OFF
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
