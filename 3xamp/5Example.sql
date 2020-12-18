use contactsDtb

CREATE TABLE Customers4
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(40) UNIQUE,
    Phone VARCHAR(25) UNIQUE
)

CREATE TABLE Customers5
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(40),
    Phone VARCHAR(25),
    UNIQUE(Email, Phone)
)

DROP TABLE Customers4, Customers5