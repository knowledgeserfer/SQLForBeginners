USE productsDtb

SELECT *
FROM products
WHERE price > (SELECT AVG(price) FROM products)

SELECT * FROM orders

SELECT * FROM customers
WHERE id IN (SELECT customerId FROM orders)

SELECT * FROM products
WHERE price < ALL(SELECT price FROM products WHERE manufacturer='MSI')

SELECT * FROM products
WHERE price < (SELECT MIN(price) FROM products WHERE manufacturer='MSI')

SELECT * FROM products
WHERE price < ANY(SELECT price FROM products WHERE manufacturer='MSI')

SELECT * FROM products
WHERE price < (SELECT MAX(price) FROM products WHERE manufacturer='MSI')

SELECT *, 
(SELECT productName FROM products WHERE id=orders.productId) 
FROM orders

INSERT INTO orders (productId, customerId, createdAt, productQuantity, price)
VALUES
( 
    (SELECT id FROM products WHERE id=3), 
    (SELECT id FROM customers WHERE id=2),
    '2020-07-19',  
    1, 
    (SELECT price FROM products WHERE id=3)
)

SELECT * FROM orders

UPDATE orders
SET productQuantity = productQuantity + 1
WHERE customerId=(SELECT id FROM customers WHERE firstName='Samuel')

SELECT * FROM orders

DELETE FROM orders
WHERE productId=(SELECT id FROM products WHERE id=3)
AND customerId=(SELECT id FROM customers WHERE id=2)

SELECT * FROM orders