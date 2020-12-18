USE productsDtb

/*
	SELECT columns
	FROM table1
		[INNER] JOIN table2
		ON condition1
		[INNER] JOIN table3
		ON condition2]
*/

SELECT orders.createdAt, products.productName, orders.productQuantity 
FROM orders
JOIN products ON products.id = orders.productId

SELECT o.createdAt, p.productName, o.productQuantity 
FROM orders AS o
JOIN products AS p
ON p.id = o.productId

SELECT orders.createdAt, customers.lastName, products.productName, products.price
FROM orders
JOIN products ON products.id = orders.productId
JOIN customers ON customers.id=orders.customerId
WHERE products.price > 120000
ORDER BY customers.lastName

SELECT orders.createdAt, customers.lastName, products.productName, products.manufacturer
FROM orders
JOIN products ON products.id = orders.productId AND products.manufacturer='HP'
JOIN customers ON customers.id=orders.customerId
ORDER BY customers.lastName

