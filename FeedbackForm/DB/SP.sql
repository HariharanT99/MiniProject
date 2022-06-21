use Feedback
GO

CREATE PROC uspGetCatagory
AS
BEGIN
    Select CategoryID
            ,CategoryName
    from ProductCategory
END
GO

exec uspGetCatagory
go

CREATE Proc uspGetProduct
@CategoryID TINYINT
as
BEGIN
    Select ProductID
            ,ProductName
    from Product
    where CategoryID = @CategoryID
END
GO


CREATE PROCEDURE uspInsertForm
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




select * from [Feedback]