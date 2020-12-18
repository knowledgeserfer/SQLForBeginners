use productsDtb

SELECT *
FROM products
ORDER BY productName

SELECT productName, productCount * price AS Total
FROM products
ORDER BY Total

SELECT productName
FROM products
ORDER BY productName DESC

SELECT productName, productCount * price AS Total
FROM products
ORDER BY Total DESC

SELECT productName, price, manufacturer
FROM products
ORDER BY manufacturer, productName

SELECT productName, price, manufacturer
FROM products
ORDER BY manufacturer ASC, productName DESC

SELECT productName, price, productCount, productCount * price
FROM products
ORDER BY productCount * price
