CREATE DATABASE contactsDtb

USE contactsDtb

/*CREATE TABLE table_name
(column_name1 datatype column_ attributes1, 
 column_name2 data_type column_ attributes2,
 ................................................
 column_nameN datatype column_ attributesN,
 table_ attributes
)*/


CREATE TABLE Customers
(
    Id INT,
    Age INT,
    FirstName NVARCHAR(40),
    LastName NVARCHAR(40),
    Email VARCHAR(40),
    Phone VARCHAR(25)
)
EXEC sp_rename 'Customers', 'customersList';
DROP TABLE customersList