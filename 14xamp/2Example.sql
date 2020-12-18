/*
Table variables allow you to store the contents of an entire table.
In this case, @laptop Brands will contain two columns.

In the future, we will be able to work with this variable as with a regular table, that is, 
add data to it, modify, delete and retrieve them.
Note, however, that such variables are not completely equivalent to tables. They live 
within the same package, after the completion of which they are removed. That is, they are 
temporary, and physically their data is not stored anywhere on the hard drive.
*/
DECLARE @laptopBrands TABLE (productId INT,  productName NVARCHAR(50))
 
INSERT INTO @laptopBrands
VALUES(1, 'MSI Leopard'),
(2, 'MSI Raider')
 
SELECT * FROM @laptopBrands