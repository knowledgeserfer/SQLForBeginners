CREATE DATABASE sampleDtb1

USE sampleDtb1

/*
	SELECT_expression1
		UNION [ALL] SELECT_expression2
		[UNION [ALL] SELECT_expressionN]
*/

CREATE TABLE customers
(
    id INT IDENTITY PRIMARY KEY,
    firstName NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
    accountAmount MONEY
);

CREATE TABLE contractors
(
    id INT IDENTITY PRIMARY KEY,
    firstName NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
);

INSERT INTO customers VALUES
('James', 'Baggins', 30000),
('Ben', 'Franklin', 50000),
('John', 'Johnson', 35000),
('Vinny', 'Smith', 22000),
('John', 'Johnes', 21000),
('Frodo', 'McGill', 80000)
 
INSERT INTO contractors VALUES
('James', 'Baggins'),
('Mat', 'Cage'),
('John', 'Johnson'),
('Niholas', 'Damon')

SELECT firstName, lastName 
FROM customers
UNION SELECT firstName, lastName FROM contractors

SELECT firstName + ' ' +lastName AS fullName
FROM Customers
UNION SELECT firstName + ' ' + lastName AS contractorName 
FROM contractors
ORDER BY FullName DESC

SELECT firstName, lastName, accountAmount
FROM customers
UNION SELECT firstName, lastName 
FROM contractors

SELECT firstName, lastName
FROM customers
UNION SELECT id, lastName 
FROM contractors

SELECT firstName, lastName
FROM customers
UNION ALL SELECT firstName, lastName 
FROM contractors

SELECT firstName, lastName, accountAmount * 0.20 AS TotalAmount 
FROM customers WHERE accountAmount < 50000
UNION SELECT firstName, lastName, accountAmount * 0.4 AS TotalAmount
FROM Customers WHERE accountAmount >= 50000



