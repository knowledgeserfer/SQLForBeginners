USE productsDtb

CREATE PROCEDURE addProduct
    @name NVARCHAR(50),
    @manufacturer NVARCHAR(50),
    @quantity INT,
    @price MONEY
AS
INSERT INTO products(productName, manufacturer, productQuantity, price) 
VALUES(@name, @manufacturer, @quantity, @price)

EXEC addProduct 'Leopard', 'MSI', 10, 40000

DECLARE @productName NVARCHAR(50), @company NVARCHAR(50);
DECLARE @prodQuantity INT, @price MONEY
SET @productName = 'Raider'
SET @company = 'MSI'
SET @price = 52000
SET @prodQuantity = 5
 
EXEC addProduct @productName, @company, @prodQuantity, @price
 
SELECT * FROM Products

