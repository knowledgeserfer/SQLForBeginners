use productsDtb

SELECT * FROM products
WHERE manufacturer IN ('Lenovo', 'HP')

SELECT * FROM products
WHERE manufacturer = 'Lenovo' OR manufacturer = 'HP'

SELECT * FROM products
WHERE manufacturer NOT IN ('Lenovo', 'HP')

SELECT * FROM products
WHERE price BETWEEN 90000 AND 120000

SELECT * FROM products
WHERE price NOT BETWEEN 90000 AND 120000

SELECT id, productName, productCount*price as Total FROM products
WHERE price * productCount BETWEEN 300000 AND 500000

/*
WHERE expression [NOT] LIKE string_pattern
A number of special wildcard characters can be used to define a template:
% : matches any substring that can have any number of characters, and the 
substring may not contain any characters
_ : matches any single character
[] : matches one character that is in square brackets
[-] : matches one character from a specific range
[^] : matches one character not specified after the ^ character
*/

SELECT * FROM products
WHERE manufacturer LIKE 'Len%'

SELECT * FROM products
WHERE manufacturer LIKE 'Lenov_'

SELECT * FROM products
WHERE manufacturer LIKE 'Lenov[abc]'

SELECT * FROM products
WHERE manufacturer LIKE 'Lenov[a-o]'

SELECT * FROM products
WHERE manufacturer LIKE 'Lenov[^a-o]'

