/*LEN: Returns the number of characters in a string. As a parameter, a string is passed to 
the function for which you need to find the length
*/
SELECT LEN('Lenovo')

--LTRIM: removes leading spaces from a string. It takes a string as a parameter
SELECT LTRIM('  Lenovo')

--RTRIM: Removes trailing spaces from a string. It takes a string as a parameter
SELECT RTRIM('     Lenovo    ')

/*CHARINDEX: Returns the index at which the first occurrence of a substring in a string 
is found. The substring is passed as the first parameter, and the string to be searched for 
as the second
*/
SELECT CHARINDEX('ov', 'Lenovo')

/*PATINDEX: Returns the index at which the first occurrence of a specific pattern in a 
string is found
*/
SELECT PATINDEX('%n%', 'Lenovo')

/*LEFT: strips a specified number of characters from the beginning of the line. 
The first parameter of the function is a string, and the second is the number of characters 
to be cut first of the string
*/
SELECT LEFT('Lenovo', 3)

/*RIGHT: strips a specified number of characters from the end of the line. The first 
parameter of the function is a string, and the second is the number of characters to be cut 
first of the string
*/
SELECT RIGHT('Lenovo', 3)

/*SUBSTRING: cuts a substring of a specified length from a string, starting at a 
specified index. The first parameter of the function is a string, the second is the 
starting index for cutting, and the third parameter is the number of characters to cut
*/
SELECT SUBSTRING('This is a cat.', 11, 3)

/*REPLACE: replaces one substring with another within a string. The first parameter 
of the function is a string, the second is the substring to be replaced, and the third is 
the substring which is going to be used for replacement
*/
SELECT REPLACE('This is a cat.', 'a cat', 'a fluffy kitten')

--REVERSE: Reverse the string
SELECT REVERSE('abc')

/*CONCAT: Concatenates two strings into one. It takes as a parameter from 2 or more strings 
that need to be connected
*/
SELECT CONCAT('James', ' ', 'Johnson')

--LOWER: converts a string to lowercase
SELECT LOWER('Lenovo')

--UPPER: converts a string to uppercase
SELECT UPPER('Lenovo')

--SPACE: returns a string that contains a specific number of spaces
SELECT 'Ten spaces' + SPACE(10) + 'are in the middle!';

