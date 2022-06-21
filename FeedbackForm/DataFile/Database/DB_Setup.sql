USE [Feedback]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [varchar](10) NOT NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL,
	[PurchasedProducts] [varchar](100) NULL,
	[Pros] [varchar](500) NOT NULL,
	[Cons] [varchar](500) NULL,
	[Document] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NULL,
	[CategoryID] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CategoryID] [tinyint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisfactionLevel]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisfactionLevel](
	[LevelID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Satisfaction] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[LevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserTitle] [varchar](5) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Initial] [varchar](3) NOT NULL,
	[UserEmail] [nvarchar](40) NOT NULL,
	[Street] [varchar](50) NOT NULL,
	[City] [varchar](60) NOT NULL,
	[Region] [varchar](50) NOT NULL,
	[Zipcode] [varchar](6) NOT NULL,
	[Country] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Feedback] ([FeedbackID], [ProductID], [UserID], [PurchasedProducts], [Pros], [Cons], [Document]) VALUES (N'GS2021315', 5, 1, N'TV,Mobile,', N'Good', N'Wdae', N'D:\Training\MiniProject\FeedbackForm\DataFile\Presentation\Resources\Hariharan_Vaccination_Certifica')
GO
INSERT [dbo].[Feedback] ([FeedbackID], [ProductID], [UserID], [PurchasedProducts], [Pros], [Cons], [Document]) VALUES (N'GS2021465', 5, 2, N'TV,Mobile,', N'Good', N'Hai', N'D:\Training\MiniProject\FeedbackForm\DataFile\Presentation\Resources\Hariharan_Vaccination_Certifica')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (1, N'Samsung', 3)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (2, N'Apple', 3)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (3, N'OnePlus', 3)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (4, N'MI', 3)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (5, N'Blue Star', 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (6, N'LG', 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (7, N'Hitachi', 1)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (8, N'Sony', 2)
GO
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID]) VALUES (9, N'Samsung', 2)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 
GO
INSERT [dbo].[ProductCategory] ([CategoryID], [CategoryName]) VALUES (1, N'Air Conditioner')
GO
INSERT [dbo].[ProductCategory] ([CategoryID], [CategoryName]) VALUES (2, N'TV')
GO
INSERT [dbo].[ProductCategory] ([CategoryID], [CategoryName]) VALUES (3, N'Mobile')
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserID], [UserTitle], [UserName], [Initial], [UserEmail], [Street], [City], [Region], [Zipcode], [Country]) VALUES (1, N'Mr', N'Hari', N'T', N'hari@99.co', N'start,End', N'545656', N'Tam', N'0', N'China')
GO
INSERT [dbo].[User] ([UserID], [UserTitle], [UserName], [Initial], [UserEmail], [Street], [City], [Region], [Zipcode], [Country]) VALUES (2, N'Mr', N'hari', N'T', N'hari@co.co', N'First,Second', N'Chennai', N'Tam', N'0', N'Japan')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategory] ([CategoryID])
GO
/****** Object:  StoredProcedure [dbo].[uspGetCatagory]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[uspGetCatagory]
AS
BEGIN
    Select CategoryID
            ,CategoryName
    from ProductCategory
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetProduct]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[uspGetProduct]
@CategoryID TINYINT
as
BEGIN
    Select ProductID
            ,ProductName
    from Product
    where CategoryID = @CategoryID
END
GO
/****** Object:  StoredProcedure [dbo].[uspInsertForm]    Script Date: 22-11-2021 20:31:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspInsertForm]
@CategoryID tinyint,
@ProductID int,
@Satisfactory TINYINT,
@PurchasedProduct VARCHAR(100),
@Pros VARCHAR(500),
@NameTitle VARCHAR(5),
@Name VARCHAR(50),
@Initial VARCHAR(3),
@Email NVARCHAR(40),
@Street VARCHAR(50),
@City VARCHAR(50),
@Region VARCHAR(50),
@ZipCode VARCHAR(6),
@Country VARCHAR(50),
@Cons VARCHAR(500),
@File NVARCHAR(100),
@FeedbackID VARCHAR(10)
AS
BEGIN
    BEGIN TRY
        BEGIN TRAN
            INSERT INTO [User] (UserTitle
                                ,UserName
                                ,Initial
                                , UserEmail
                                ,Street
                                ,City
                                ,Region
                                ,Zipcode
                                ,Country
                                )
            VALUES (@NameTitle
                    ,@Name
                    ,@Initial
                    ,@Email
                    ,@Street
                    ,@City
                    ,@Region
                    ,@ZipCode
                    ,@Country);

             If(@@ROWCOUNT = 0)
            BEGIN
		        ROLLBACK TRAN
		        RAISERROR('Cannot assign next round',16,6)
		    END

            DECLARE @UserId int;

            select @UserId = SCOPE_IDENTITY();

            INSERT INTO [Feedback] (FeedbackID
                                    ,ProductID
                                    ,UserID
                                    ,PurchasedProducts
                                    ,Pros
                                    ,Cons
                                    ,Document
                                    )
            VALUES(@FeedbackID
                    ,@ProductID
                    ,@UserId
                    ,@PurchasedProduct
                    ,@Pros
                    ,@Cons
                    ,@File);

            
             If(@@ROWCOUNT = 0)
            BEGIN
		        ROLLBACK TRAN InsertForm
		        RAISERROR('Cannot assign next round',16,6)
		    END

            Select 'Success'
            COMMIT
    END TRY
    BEGIN CATCH
        RollBack Tran

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
