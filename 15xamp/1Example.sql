USE productsDtb

CREATE PROCEDURE productUpdate AS
SELECT productName, manufacturer, price
FROM products

EXEC productUpdate

DROP PROCEDURE productUpdate