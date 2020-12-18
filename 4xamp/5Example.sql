USE contactsDtb

CREATE TABLE customers2
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT DEFAULT 18, 
    FirstName NVARCHAR(20) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Email VARCHAR(30) UNIQUE,
    Phone VARCHAR(20) UNIQUE
);
CREATE TABLE orders2
(
    Id INT IDENTITY,
    CustomerId INT,
    CreatedAt Date
);

ALTER TABLE customers2
ADD CHECK (Age < 130);

ALTER TABLE orders2
ADD FOREIGN KEY(CustomerId) REFERENCES Customers(Id);

ALTER TABLE orders2
ADD PRIMARY KEY (Id);

ALTER TABLE orders2
ADD CONSTRAINT PK_orders_Id PRIMARY KEY (Id),
    CONSTRAINT FK_orders_to_customers FOREIGN KEY(CustomerId) REFERENCES customers(Id);
 
ALTER TABLE customers2
ADD CONSTRAINT CK_age_greater_than_zero CHECK (Age > 0);

ALTER TABLE orders2
DROP PK_orders_Id, FK_orders_to_customers;