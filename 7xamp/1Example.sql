use productsDtb
--
SELECT AVG(price) AS average_Price FROM products
SELECT SUM(PRICE) AS GRANDTotal FROM products
select * from products

--
select * from products
WHERE manufacturer='Lenovo Inc.'

SELECT AVG(price) FROM products
WHERE manufacturer='Lenovo Inc.'

--
select * from products
SELECT SUM(price*productCount) AS GRANDTotal FROM products
SELECT AVG(price * productCount) FROM products

--
select * from products
SELECT COUNT(*) FROM products	
SELECT COUNT(productCount) FROM products

SELECT MIN(price) FROM products

SELECT MAX(price) FROM products

SELECT SUM(productCount) FROM products

SELECT SUM(productCount * price) FROM products

select * from products

SELECT COUNT(DISTINCT manufacturer) FROM products

SELECT COUNT(*) AS prodModels,
       SUM(productCount) AS Quantity,
       MIN(price) AS minPrice,
       MAX(price) AS maxPrice,
       AVG(price) AS avgPrice
FROM Products