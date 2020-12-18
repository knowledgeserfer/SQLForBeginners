use productsDtb

SELECT * FROM products

SELECT productName, price FROM products

SELECT productName + ' (' + manufacturer + ')', price, price * productCount 
FROM products

SELECT
productName + ' (' + manufacturer + ')' AS Model, 
price,  
price * productCount AS Total
FROM products

SELECT manufacturer
FROM products

SELECT DISTINCT manufacturer
FROM products

SELECT productName + ' (' + manufacturer + ')' AS Model, Price
INTO productList
FROM products
 
SELECT * FROM productList

INSERT INTO productList
SELECT productName + ' (' + manufacturer + ')' AS Model, price
FROM Products

SELECT * FROM productList