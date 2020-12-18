USE contactsDtb

CREATE TABLE customers
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT DEFAULT 18, 
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email VARCHAR(40) UNIQUE,
    Phone VARCHAR(25) UNIQUE
);
 
CREATE TABLE orders
(
    Id INT PRIMARY KEY IDENTITY,
    CustomerId INT REFERENCES customers (Id),
    CreatedAt Date
);


CREATE TABLE orders2
(
    Id INT PRIMARY KEY IDENTITY,
    CustomerId INT,
    CreatedAt Date,
    FOREIGN KEY (CustomerId)  REFERENCES customers (Id)
);



CREATE TABLE orders3
(
    Id INT PRIMARY KEY IDENTITY,
    CustomerId INT,
    CreatedAt Date,
    CONSTRAINT FK_orders_to_customers FOREIGN KEY (CustomerId)  REFERENCES customers (Id)
);
DROP TABLE customers
DROP TABLE customers, orders, orders2, orders3
DROP TABLE customers