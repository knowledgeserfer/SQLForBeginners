CREATE DATABASE sampleDtb3;

USE sampleDtb3;

CREATE TABLE products
(
    id INT IDENTITY PRIMARY KEY,
    productName NVARCHAR(50) NOT NULL,
    manufacturer NVARCHAR(50) NOT NULL,
    price MONEY NOT NULL,
    deleteFlag BIT NULL
);

INSERT INTO products(productName, manufacturer, price)
VALUES ('Leopard', 'MSI', 40000),
('Raider', 'MSI', 52000);

CREATE TRIGGER products_DELETE
ON products
INSTEAD OF DELETE
AS
UPDATE products
SET deleteFlag = 1
WHERE id =(SELECT id FROM deleted)

SELECT * FROM products

DELETE FROM products 
WHERE productName='Raider';
 
SELECT * FROM products;