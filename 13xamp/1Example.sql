DECLARE @firstName NVARCHAR(30), @age INT;
SET @firstName='Samuel';
SET @age = 22;

PRINT 'Name: ' + @firstName;
PRINT 'Age: ' + CONVERT(CHAR, @age);

SELECT @firstName, @age;

USE productsDtb

DECLARE @maxPrice MONEY, 
    @minPrice MONEY, 
    @diff MONEY, 
    @quantity INT
 
SET @quantity = (SELECT SUM(productQuantity) FROM orders);

SELECT @minPrice=MIN(price), @maxPrice = MAX(Price) FROM Products

SET @diff = @maxPrice - @minPrice;

PRINT 'Quantity: ' + CONVERT(CHAR, @quantity)
PRINT 'MinPrice: ' + CONVERT(CHAR, @minPrice) + ' MaxPrice' + CONVERT(CHAR, @maxPrice)
PRINT 'Total sales: ' + STR(@quantity, 5) + ' items';
PRINT 'Difference betweeen maximal and minimal prices: ' + STR(@diff)