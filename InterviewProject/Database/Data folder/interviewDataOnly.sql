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
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (90, 12, 3, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (91, 12, 4, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (92, 12, 5, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (93, 12, 6, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (94, 12, 7, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (95, 12, 8, 3)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (96, 12, 9, 4)
GO
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (97, 12, 10, 4)
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
INSERT [dbo].[SkillRating] ([SkillRatingID], [ReviewID], [SkillID], [RatingID]) VALUES (137, 17, 10, NULL)
GO
SET IDENTITY_INSERT [dbo].[SkillRating] OFF
GO