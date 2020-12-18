CREATE DATABASE productsDtb;

GO

USE productsDtb;

CREATE TABLE products
(
    id INT IDENTITY PRIMARY KEY,
    productName NVARCHAR(50) NOT NULL,
    manufacturer NVARCHAR(30) NOT NULL,
    productCount INT DEFAULT 0,
    price MONEY NOT NULL
)

INSERT products VALUES ('ThinkPad X1 Extreme', 'Lenovo', 3, 136000)

INSERT INTO products 
VALUES
('ZBook 17 G6', 'HP', 5, 110000),
('Latitude 5501', 'Dell', 6, 87000),
('ROG Zephyrus S17', 'Asus', 7, 109000),
('Predator Triton 300', 'Acer', 9, 67000),
('Legion Y540-15IRH', 'Lenovo', 10, 44000)