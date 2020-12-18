/*
CREATE VIEW view_name [(column_1, column_2, ....)]
AS expression_SELECT

Views give us a number of advantages. They simplify complex SQL operations. They protect the 
data because views can give access to a portion of a table rather than an entire table. 
Views also allow you to return formatted values from tables in the desired and convenient 
form.

A SELECT statement used in a view cannot include INTO or ORDER BY expressions (unless a TOP 
or OFFSET expression is also used). If you need to sort the data in the view, then the 
ORDER BY clause is used in a SELECT statement that retrieves data from the view.
*/

USE productsDtb

CREATE VIEW ordersSummary AS
SELECT orders.createdAt AS orderDate, 
        customers.lastName AS customer,
        products.productName As product  
FROM orders INNER JOIN products ON orders.productId = products.id
INNER JOIN customers ON orders.customerId = customers.id

SELECT * FROM ordersSummary

/*
ALTER VIEW view_name [(column_1, column_2, ....)]
AS expression_SELECT
*/

ALTER VIEW ordersSummary
AS SELECT orders.createdAt AS orderDate, 
        customers.lastName AS customer,
        products.productName AS product,
        products.manufacturer AS manufacturer
FROM orders INNER JOIN products ON orders.productId = products.id
INNER JOIN customers ON orders.customerId = customers.id

SELECT * FROM ordersSummary

--when you drop tables, you should also drop the views that use those tables.

DROP VIEW ordersSummary
DROP VIEW productsView

/*
Views can be updatable. In such views, we can change or delete lines, or add new lines to them.
There are many limitations when creating such views. In particular, the SELECT command when 
creating an updatable view cannot contain:
TOP
DISTINCT
UNION
JOIN
aggregate functions of type COUNT or MAX
GROUP BY and HAVING
subqueries
derived columns or columns that are calculated based on multiple values
simultaneous access to multiple tables

It should be noted that this applies specifically to the updated view. For example, we can 
use the JOIN statement in the SELECT statement to create a regular view, but the view 
will not be updatable. When we try to update it, we will receive an error like 
"View or function view_name is not updatable because the modification affects multiple 
base tables."
*/
CREATE VIEW productsView
AS SELECT productName, manufacturer, price
FROM products

/*
It's worth noting that adding will actually add an object to the Products table that the 
ProductView uses. And therefore, it should be borne in mind that if there are any columns in 
this table to which the view does not add data, but which do not allow NULL or do not 
support the default value, then the addition will fail.
Updates and deletions also affect the table that the view is using.
*/
INSERT INTO productsView (productName, manufacturer, price)
VALUES('Leopard', 'MSI', 38000)
 
SELECT * FROM productsView
SELECT * FROM products

UPDATE productsView 
SET price= 40000 WHERE productName='Leopard'

DELETE FROM productsView 
WHERE productName='Leopard'

