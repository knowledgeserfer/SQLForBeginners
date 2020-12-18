USE productsDtb

DECLARE @lastSaleDate DATE
 
SELECT @lastSaleDate = MAX(createdAt) FROM orders
 
IF DATEDIFF(day, @lastSaleDate, GETDATE()) > 5
    PRINT 'In last 5 days no sales happened'
ELSE
    PRINT 'In last 5 days there were sales'


USE productsDtb

DECLARE @lastSaleDate DATE, @quantity INT, @amount MONEY
 
SELECT @lastSaleDate = MAX(createdAt), 
        @quantity = SUM(productQuantity),
        @amount = SUM(productQuantity * price)
FROM orders
 
IF @quantity > 0
    BEGIN
        PRINT 'Date of the last sale: ' + CONVERT(NVARCHAR, @lastSaleDate) 
        PRINT 'Total quantity sold ' + CONVERT(NVARCHAR, @quantity)
        PRINT 'Total amount sold ' + CONVERT(NVARCHAR, @amount)
    END;
ELSE
    PRINT 'No data available'

SELECT * FROM orders