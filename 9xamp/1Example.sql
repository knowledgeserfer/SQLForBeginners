USE productsDtb

SELECT * FROM orders, customers

SELECT * FROM orders, customers
WHERE orders.customerId = customers.id

SELECT customers.firstName, customers.lastName, products.productName, orders.createdAt 
FROM orders, customers, products
WHERE orders.customerId = customers.id AND orders.productId=Products.id

SELECT c.firstName, c.lastName, p.productName, o.createdAt 
FROM orders AS o, customers AS c, products AS p
WHERE o.customerId = c.id AND o.productId=p.id

