USE sampleDtb1

/*
	SELECT_expression1
		INTERSECT SELECT_expression2
*/

SELECT firstName, lastName
FROM contractors
INTERSECT SELECT firstName, lastName 
FROM customers