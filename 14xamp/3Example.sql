USE productsDtb

/*
Temporary tables exist for the duration of a database session. If such a table is created in 
the Query Editor in SQL Server Management Studio, then the table will exist while the Query 
Editor is open. Thus, the temporary table can be accessed from different scripts inside the 
query editor.

After creation, all temporary tables are saved in the tempdb table, which is available by 
default in MS SQL Server.

If it is necessary to drop a table before the end of the database session, then the DROP TABLE
command should be executed for this table.

The name of the temporary table begins with a hash sign #. If a single # is used, a local 
table is created that is available during the current session. If two ## characters are used, 
then a global temporary table is created. Unlike a local one, a global temporary table is 
available to all open database sessions.

And with this table you can work more like with a regular table - get data, add, change and 
delete them. Only after you close the query editor will this table cease to exist.
*/

CREATE TABLE #productsInfo
(productId INT IDENTITY,
productName NVARCHAR(50),
price MONEY)
 
INSERT INTO #productsInfo
VALUES ('MSI Leopard', 38000),
        ('MSI Raider', 52000)
 
SELECT * FROM #productsInfo

CREATE TABLE ##ordersInfo
(productId INT, quantity INT, amount MONEY)
 
INSERT INTO ##ordersInfo
SELECT productId, SUM(productQuantity), SUM(productQuantity * Price)
FROM orders
GROUP BY productId
 
SELECT * FROM ##ordersInfo

DROP TABLE ##ordersInfo

/*
In addition to temporary tables, MS SQL Server allows you to create derived table that are more 
efficient in terms of performance than temporary tables. The derived table is specified 
using the 
WITH keyword. Unlike temporary tables, derived table are stored in memory and only exist during 
the 
first execution of a query that represents that table.
*/

WITH ordersInfo AS
(
    SELECT productId, 
        SUM(productQuantity) AS Quantity, 
        SUM(productQuantity * price) AS Amount
    FROM orders
    GROUP BY productId
)
 
SELECT * FROM ordersInfo
SELECT * FROM ordersInfo
