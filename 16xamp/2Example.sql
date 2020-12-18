CREATE DATABASE sampleDtb2;

USE sampleDtb2;

CREATE TABLE products
(
    id INT IDENTITY PRIMARY KEY,
    productName NVARCHAR(50) NOT NULL,
    manufacturer NVARCHAR(50) NOT NULL,
    productQuantity INT DEFAULT 0,
    price MONEY NOT NULL
);
CREATE TABLE journalLog 
(
    id INT IDENTITY PRIMARY KEY,
    productId INT NOT NULL,
    operation NVARCHAR(180) NOT NULL,
    createAt DATETIME NOT NULL DEFAULT GETDATE(),
);

CREATE TRIGGER products_INSERT
ON products
AFTER INSERT
AS
INSERT INTO journalLog(productId, operation)
SELECT Id, 'Item was added ' + ProductName + ' ' + Manufacturer
FROM INSERTED

INSERT INTO products (productName, manufacturer, productQuantity, price)
VALUES('Leopard', 'MSI', 10, 40000)
 
SELECT * FROM journalLog

CREATE TRIGGER products_DELETE
ON products
AFTER DELETE
AS
INSERT INTO journalLog(productId, operation)
SELECT id, 'Item was deleted ' + productName + ' ' + Manufacturer
FROM DELETED

INSERT INTO products (productName, manufacturer, productQuantity, price)
VALUES('Raider', 'MSI', 5, 52000)

DELETE FROM products
WHERE id=3

SELECT * FROM products
SELECT * FROM journalLog

DROP TRIGGER products_INSERT

CREATE TRIGGER products_UPDATE
ON products
AFTER UPDATE
AS
INSERT INTO journalLog(productId, operation)
SELECT Id, 'Item updated ' + productName + ' ' + manufacturer
FROM INSERTED

UPDATE products SET manufacturer='MSI Inc.'
WHERE manufacturer='MSI'

SELECT * FROM products
SELECT * FROM journalLog