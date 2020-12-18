use contactsDtb
--IDENTITY(seed, increment)

CREATE TABLE Customers3
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(40),
    Phone VARCHAR(25)
)

DROP TABLE Customers3