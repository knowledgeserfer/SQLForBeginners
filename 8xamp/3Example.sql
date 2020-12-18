USE productsDtb

SELECT *
FROM customers
WHERE EXISTS (SELECT * FROM orders 
                  WHERE orders.customerId = customers.Id)

SELECT *
FROM products
WHERE EXISTS (SELECT * FROM orders
					WHERE products.id=orders.productId)