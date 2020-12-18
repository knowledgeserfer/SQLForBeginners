use productsDtb

SELECT *
FROM products

SELECT TOP 3 *
FROM products

SELECT TOP 50 PERCENT *
FROM products

SELECT * FROM products
ORDER BY id 
    OFFSET 4 ROWS;

SELECT * FROM products
ORDER BY id 
    OFFSET 2 ROWS
    FETCH NEXT 3 ROWS ONLY;





