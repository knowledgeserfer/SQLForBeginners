use productsDtb

/*
SELECT columns
FROM table
[WHERE row_filtration_condition]
[GROUP BY column_to_grouping]
[HAVING group_filtration_condition]
[ORDER BY columns to sort] DESC
*/

SELECT manufacturer, COUNT(*) AS modelsCount
FROM products
GROUP BY manufacturer

SELECT manufacturer, productCount, COUNT(*) AS modelsCount
FROM products
GROUP BY manufacturer, productCount

SELECT manufacturer, COUNT(*) AS modelsCount
FROM products
WHERE price > 80000
GROUP BY manufacturer
ORDER BY modelsCount DESC

SELECT * FROM products

SELECT manufacturer, COUNT(*) AS modelsCount
FROM products
GROUP BY manufacturer
HAVING COUNT(*) > 1

SELECT manufacturer, COUNT(*) AS modelsCount
FROM products
WHERE price * productCount > 150000
GROUP BY manufacturer
HAVING COUNT(*) > 1

SELECT manufacturer, COUNT(*) AS models, SUM(productCount) AS quantity
FROM products
WHERE price * productCount > 200000
GROUP BY manufacturer
HAVING SUM(productCount) > 5
ORDER BY quantity DESC