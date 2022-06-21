-- create DATABASE Feedback
Use Feedback

Create TABLE ProductCategory(
    CategoryID tinyint IDENTITY PRIMARY KEY,
    CategoryName VARCHAR(50)
)

Create TABLE Product(
    ProductID int IDENTITY PRIMARY KEY,
    ProductName VARCHAR(50),
    CategoryID tinyint,
    FOREIGN KEY(CategoryID) REFERENCES ProductCategory(CategoryID)
)

Create TABLE [User](
    UserID int IDENTITY PRIMARY KEY,
    UserTitle VARCHAR(5),
    UserName VARCHAR(50) Not Null,
    Initial VARCHAR(3) Not Null,
    UserEmail NVARCHAR(40) Not Null,
    Street VARCHAR(50) Not Null,
    City VARCHAR(60) Not Null,
    Region VARCHAR(50) Not Null,
    Zipcode VARCHAR(6) Not Null,
    Country VARCHAR(50) Not NUll,
)

Create TABLE SatisfactionLevel(
    LevelID TINYINT IDENTITY PRIMARY KEY,
    Satisfaction VARCHAR(30)
)


Create TABLE Feedback(
    FeedbackID VARCHAR(10) PRIMARY KEY,
    ProductID int FOREIGN Key REFERENCES Product(ProductID),
    UserID int FOREIGN KEY REFERENCES [User](UserID),
    PurchasedProducts VARCHAR(100),
    Pros VARCHAR(500) Not Null,
    Cons VARCHAR (500),
    Document NVARCHAR(100)
)
