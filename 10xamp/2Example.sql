USE sampleDtb1

/*
	SELECT_expression1
	EXCEPT SELECT_expression2

*/

SELECT firstName, lastName
FROM customers
EXCEPT SELECT firstName, lastName 
FROM contractors

SELECT firstName, lastName
FROM contractors
EXCEPT SELECT firstName, lastName 
FROM customers

