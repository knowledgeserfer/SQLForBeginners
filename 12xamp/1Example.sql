/*
Priority of data types in SQL (the first, the highest):
datetime
smalldatetime
float
real
decimal
money
smallmoney
int
smallint
tinyint
bit
nvarchar
nchar
varchar
char
*/

USE productsDtb

/*The CAST function converts an expression of one type to another. It has the following form
For example, when displaying information about orders, we convert a numeric value and date 
to a string*/
SELECT id, CAST(createdAt AS nvarchar) + '; total: ' 
+ CAST(price * productQuantity AS nvarchar) 
FROM orders

/*CONVERT (datatype, expression [, style])
0 or 100 - date format "Mon dd yyyy hh: miAM / PM" (default value)
1 or 101 - date format "mm / dd / yyyy"
3 or 103 - date format "dd / mm / yyyy"
0 - only two digits remain in the fractional part of the number (by default)
1 - only two digits remain in the fractional part of the number, and a comma is used to separate the digits
2 - only four digits remain in the fractional part of the number
аor example, we will display the date and cost of orders with formatting*/
SELECT CONVERT(nvarchar, createdAt, 3), 
       CONVERT(nvarchar, price * productQuantity, 1) 
FROM orders

/*When using the CAST and CONVERT functions, SQL Server throws an exception if the data 
cannot be cast to a specific type.
To avoid throwing an exception, you can use the TRY_CONVERT function. Its use is similar 
to the CONVERT function, except that 
if the expression cannot be converted to the desired type, the function returns NULL.*/
SELECT CONVERT(int, 'Some text')
SELECT TRY_CONVERT(int, 'Some text')

/*STR (float [, length [, decimal]]): Converts a number to a string. 
The second parameter indicates the length of the string, and the 
third indicates how many characters in the fractional part of the number should be left*/
SELECT STR(522.5481, 6,2)
/*
CHAR (int): Converts a numeric ASCII code to a character. 
Often used for situations where a character is needed that cannot be entered from the
keyboard
*/
SELECT CHAR(100)
/*ASCII (char): Converts a character to numeric ASCII code*/
SELECT ASCII('B')
/*NCHAR (int): Converts a UNICODE numeric code to a character*/
SELECT NCHAR(100)
/*UNICODE (char): converts a character to UNICODE numeric code*/
SELECT UNICODE('B')