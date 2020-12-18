/*ROUND: rounds the number. A number is passed as the first parameter. 
The second parameter indicates the length. If the length is a positive number, 
then it indicates to which decimal place the rounding goes. If the length is a 
negative number, then it indicates to which digit from the end of the number to the 
decimal point is rounding
*/
SELECT ROUND(1425.325, 2)
SELECT ROUND(1455.325, -2)

/*ISNUMERIC: Determines if the value is a number. The function takes an expression as 
a parameter. If expression is a number, then the function returns 1. If it is not, 
then 0 is returned.
*/
SELECT ISNUMERIC(1425.325)
SELECT ISNUMERIC('1425.325')
SELECT ISNUMERIC('Some text')

--ABS: Returns the absolute value of a number.
SELECT ABS(-1425.325)

--CEILING: returns the smallest integer that is greater than or equal to the current value
SELECT CEILING(-1425.325)
SELECT CEILING(1425.325)

--FLOOR: Returns the largest integer less than or equal to the current value
SELECT FLOOR(-1425.325)
SELECT FLOOR(1425.325)

--SQUARE: squares a number
SELECT SQUARE(10)

--SQRT: Get the square root of a number
SELECT SQRT(256)

--RAND: generates a random floating point number in the range 0 to 1.
SELECT RAND()
SELECT RAND()
SELECT RAND()

--COS: Returns the cosine of an angle, expressed in radians
--SIN: Returns the sine of an angle expressed in radians
--TAN: Returns the tangent of an angle expressed in radians
SELECT COS(1.04728)
SELECT SIN(1.57089)
SELECT TAN(0.785401)




