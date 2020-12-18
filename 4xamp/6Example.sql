CREATE DATABASE onlineShop;

GO
 
USE onlineShop;
 
CREATE TABLE customers
(
    id INT PRIMARY KEY IDENTITY,
    age INT DEFAULT 18, 
    firstName NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    phone VARCHAR(25) UNIQUE
);
 
CREATE TABLE orders
(
    Id INT PRIMARY KEY IDENTITY,
    customerId INT,
    createdAt DATE,
    FOREIGN KEY (customerId) REFERENCES customers (id) ON DELETE CASCADE
);