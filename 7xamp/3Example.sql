use productsDtb

SELECT manufacturer, COUNT(*) AS models, SUM(productCount) AS quantity
FROM products
GROUP BY manufacturer WITH ROLLUP

SELECT manufacturer, COUNT(*) AS models, SUM(productCount) AS quantity
FROM products
GROUP BY ROLLUP(manufacturer)

SELECT manufacturer, COUNT(*) AS models, SUM(productCount) AS quantity
FROM products
GROUP BY manufacturer, productCount WITH ROLLUP

SELECT manufacturer, COUNT(*) AS models, SUM(ProductCount) AS quantity
FROM products
GROUP BY manufacturer, productCount WITH CUBE

SELECT manufacturer, COUNT(*) AS models, productCount, SUM(productCount) as GroupQuantity
FROM products
GROUP BY GROUPING SETS(ROLLUP(manufacturer), productCount)

SELECT manufacturer, price, AVG(price) OVER (PARTITION BY manufacturer) 
FROM products
