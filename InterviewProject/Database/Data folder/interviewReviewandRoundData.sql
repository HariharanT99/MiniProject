USE [InterviewManagement]
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
