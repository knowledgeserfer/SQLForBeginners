/*
The CASE function checks the value of some 
expression, and depending on the result of the check, it 
can return one or another result.
CASE expression
	WHEN value_1 THEN result_1
	WHEN value_2 THEN result_2
	.................................
	WHEN value_N THEN result_N
	[ELSE alternative_result]
END
*/

USE productsDtb

SELECT productName, manufacturer, productQuantity,
    CASE productQuantity
        WHEN 0 THEN 'No items available'
        WHEN 1 THEN 'Allmost ended'
        WHEN 2 THEN 'Few items available'
		WHEN 3 THEN 'Only three items left'
        ELSE 'More than 3 items available'
    END AS productStatus
FROM products

/*
CASE
	WHEN expression_1 THEN result_1
	WHEN expression_2 THEN result_2
	.................................
	WHEN expression_N THEN result_N
	[ELSE alternative_result]
END
*/

SELECT productName, manufacturer, price,
    CASE
        WHEN price > 100000 THEN 'Discount 10%'
        WHEN Price BETWEEN 80000 AND 100000 THEN 'Discount 8%'
        WHEN Price BETWEEN 50000 AND 79999 THEN 'Discount 5%'
        ELSE 'Discount 3%'
    END AS discountType
FROM products

/*
The IIF function returns one of two values depending on the result of 
the conditional expression.
IIF (condition, value_1, value_2)
*/

SELECT productName, manufacturer, productQuantity,
    IIF(productQuantity>3, 'More than three items available', 'Only few items left')
FROM Products

