USE productsDtb

CREATE PROCEDURE minMaxPrices
    @minPrice MONEY OUTPUT,
    @maxPrice MONEY OUTPUT
AS
SELECT @minPrice = MIN(price),  @maxPrice = MAX(price)
FROM products

DECLARE @minPrice MONEY, @maxPrice MONEY
 
EXEC minMaxPrices @minPrice OUTPUT, @maxPrice OUTPUT
 
PRINT 'Minimal price ' + CONVERT(VARCHAR, @minPrice)
PRINT 'Maximal price ' + CONVERT(VARCHAR, @maxPrice)

CREATE PROCEDURE getAveragePrice AS
DECLARE @averagePrice MONEY
SELECT @averagePrice = AVG(price)
FROM products
RETURN @averagePrice;

DECLARE @result MONEY
 
EXEC @result = getAveragePrice
PRINT @result