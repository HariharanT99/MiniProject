USE [InterviewManagement]
GO
/****** Object:  Table [dbo].[Applicant]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[Designation]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[Interview]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[InterviewerReview]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[InterviewRound]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[Rating]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[SkillRating]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[Status]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 08-11-2021 11:41:30 ******/
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
/****** Object:  Table [dbo].[UserRole]    Script Date: 08-11-2021 11:41:30 ******/
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
