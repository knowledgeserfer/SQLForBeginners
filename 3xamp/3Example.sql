use contactsDtb
CREATE TABLE Customers1
(
    Id INT PRIMARY KEY,
    Age INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(40),
    Phone VARCHAR(25)
)

CREATE TABLE Customers2
(
    Id INT,
    Age INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email VARCHAR(40),
    Phone VARCHAR(25),
    PRIMARY KEY(Id)
)

CREATE TABLE OrderList
(
    OrderId INT,
    ProductId INT,
    Quantity INT,
    Price MONEY,
    PRIMARY KEY(OrderId, ProductId)
)

DROP TABLE Customers1, Customers2, OrderList