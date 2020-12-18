USE productsDtb

/*The NEWID () function is used to generate a UNIQUEIDENTIFIER object, 
that is, some unique value. For example, we can define a UNIQUEIDENTIFIER type for 
a primary key column and, by default, assign it the value of the NEWID function*/

CREATE TABLE contractors
(
    id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    firstName NVARCHAR(50) NOT NULL,
    lastName NVARCHAR(50) NOT NULL,
    phone NVARCHAR(25) NULL,
    email NVARCHAR(40) NULL
)
 
INSERT INTO contractors (firstName, lastName, phone, email)
VALUES ('James', 'Johnson', '+33223322', 'johnsonjames@yahoo.com'),
('John', 'Jameson', '+22332233', 'jamesonjohn@gmail.com'),
('William', 'Silverson', '+32323232', 'silversonwilliam@bing.com'),
('Samuel', 'Williamson', NULL, NULL)

SELECT * FROM contractors

/*The ISNULL function tests the value of some expression. 
If it is NULL, then the function returns the value that is passed as the second parameter*/
SELECT firstName, lastName,
        ISNULL(phone, 'not defined') AS phone,
        ISNULL(email, 'not defined') AS email
FROM contractors

/*The COALESCE function takes a list of values and returns the first one, which is not NULL*/
SELECT firstName, lastName,
        COALESCE(phone, email, 'not defined') AS contacts
FROM contractors