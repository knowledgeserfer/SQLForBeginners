DROP DATABASE productsDtb

CREATE DATABASE productsDtb

USE productsDtb

CREATE TABLE products
(
    id INT IDENTITY PRIMARY KEY,
    productName NVARCHAR(50) NOT NULL,
    manufacturer NVARCHAR(30) NOT NULL,
    productQuantity INT DEFAULT 0,
    price MONEY NOT NULL
);

CREATE TABLE customers
(
    id INT IDENTITY PRIMARY KEY,
    firstName NVARCHAR(50) NOT NULL,
	lastName NVARCHAR(50) NOT NULL
);

CREATE TABLE orders
(
    id INT IDENTITY PRIMARY KEY,
    productId INT NOT NULL REFERENCES products(id) ON DELETE CASCADE,
    customerId INT NOT NULL REFERENCES customers(id) ON DELETE CASCADE,
    createdAt DATE NOT NULL,
    productQuantity INT DEFAULT 1,
    price MONEY NOT NULL
);

INSERT INTO products 
VALUES
('ThinkPad X1 Extreme', 'Lenovo', 3, 136000),
('ZBook 17 G6', 'HP', 5, 110000),
('Latitude 5501', 'Dell', 6, 87000),
('ROG Zephyrus S17', 'Asus', 7, 109000),
('Predator Triton 300', 'Acer', 9, 67000),
('Legion Y540-15IRH', 'Lenovo', 10, 44000),
('Omen X 2S', 'HP', 2, 124000),
('ConceptD 5 Pro', 'Acer', 4, 68000),
('GS75 Stealth 10SGS', 'MSI', 6, 109000),
('GE75 Raider 10SGS', 'MSI', 7, 101000),
('MSI GT75-8RG Titan', 'MSI', 8, 61000)

INSERT INTO customers VALUES 
('Samuel', 'Russel'), 
('Kurt', 'Johnes'),
('Vinny', 'Jackson')

INSERT INTO Orders 
VALUES
( 
    (SELECT id FROM products WHERE productName='ZBook 17 G6'), 
    (SELECT id FROM customers WHERE firstName='Samuel'),
    '2020-07-15',  
    1, 
    (SELECT price FROM products WHERE productName='ZBook 17 G6')
),
( 
    (SELECT id FROM products WHERE productName='Omen X 2S'), 
    (SELECT id FROM customers WHERE lastName='Johnes'),
    '2020-07-16',  
    1, 
    (SELECT price FROM products WHERE productName='Omen X 2S')
),
( 
    (SELECT id FROM products WHERE ProductName='Latitude 5501'), 
    (SELECT id FROM customers WHERE id=2),
    '2020-07-18',  
    1, 
    (SELECT price FROM products WHERE productName='Latitude 5501')
)

SELECT * FROM orders
SELECT * FROM products
SELECT * FROM customers


SELECT *
FROM products
WHERE price = (SELECT MIN(price) FROM products)

SELECT *
FROM products
WHERE price > (SELECT AVG(price) FROM products)

SELECT  createdAt, 
        price,
		productId, 
        (SELECT productName FROM products 
        WHERE products.Id = orders.productId) AS product
FROM orders

