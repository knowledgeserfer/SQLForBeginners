USE productsDtb

SELECT * FROM orders CROSS JOIN customers

SELECT * FROM orders, customers

/*
SELECT columns
FROM table1
	{LEFT | RIGHT | FULL} [OUTER] JOIN table2 ON condition1
	[{LEFT | RIGHT | FULL} [OUTER] JOIN table3 ON condition2] ...
*/

SELECT lastName, createdAt, productQuantity, price, productId 
FROM orders LEFT JOIN customers 
ON orders.customerId = customers.id

SELECT lastName, createdAt, productQuantity, price 
FROM orders JOIN customers 
ON orders.customerId = customers.Id
 
SELECT lastName, createdAt, productQuantity, price 
FROM customers LEFT JOIN orders 
ON orders.customerId = customers.id

SELECT lastName, createdAt, productQuantity, price, productId 
FROM customers JOIN orders
ON orders.customerId = customers.id

SELECT lastName, createdAt, productQuantity, price, productId 
FROM orders RIGHT JOIN customers 
ON orders.customerId = customers.id

INSERT orders 
VALUES ('5', '4', '2020-07-21', '1', (SELECT price FROM products WHERE products.id=5))

SELECT lastName, createdAt, productQuantity, price, productId 
FROM orders FULL JOIN customers 
ON orders.customerId = customers.id

SELECT customers.lastName, orders.createdAt, 
       products.productName, products.manufacturer
FROM orders 
LEFT JOIN customers ON orders.customerId = customers.id
LEFT JOIN products ON orders.productId = products.id

SELECT customers.lastName, orders.createdAt, 
       products.productName, products.manufacturer, products.price
FROM orders 
LEFT JOIN customers ON orders.customerId = customers.id
LEFT JOIN products ON orders.productId = products.id
WHERE products.price > 80000
ORDER BY orders.createdAt

