use contactsDtb

/*
"PK_" - for PRIMARY KEY
"FK_" - for FOREIGN KEY
"CK_" - for CHECK
"UQ_" - for UNIQUE
"DF_" - for DEFAULT*/

CREATE TABLE Customers8
(
    Id INT CONSTRAINT PK_Customer_Id PRIMARY KEY IDENTITY,
    Age INT
        CONSTRAINT DF_Customer_Age DEFAULT 18 
        CONSTRAINT CK_Customer_Age CHECK(Age >0 AND Age < 130),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email VARCHAR(40) CONSTRAINT UQ_Customer_Email UNIQUE,
    Phone VARCHAR(25) CONSTRAINT UQ_Customer_Phone UNIQUE
)

DROP TABLE Customers8


