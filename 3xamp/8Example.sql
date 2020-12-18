use contactsDtb

CREATE TABLE Customers7
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT DEFAULT 18 CHECK(Age >0 AND Age < 130),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email VARCHAR(40) UNIQUE CHECK(Email !=''),
    Phone VARCHAR(25) UNIQUE CHECK(Phone !='')
);

CREATE TABLE Customers8
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT DEFAULT 18,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email VARCHAR(40) UNIQUE,
    Phone VARCHAR(25) UNIQUE,
    CHECK((Age >0 AND Age<130) AND (Email !='') AND (Phone !=''))
)

DROP TABLE Customers7, Customers8