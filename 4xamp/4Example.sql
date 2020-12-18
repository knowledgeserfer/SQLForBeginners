/*
ALTER TABLE table_name [WITH CHECK | WITH NOCHECK]
{ADD column_name column_data_type [column_attributes] | 
  DROP COLUMN column_name |
  ALTER COLUMN column_name column_data_type [NULL | NOT NULL] |
  ADD [CONSTRAINT] constraint_definition |
  DROP [CONSTRAINT] constraint_name}
  */
CREATE TABLE customers
(
    Id INT PRIMARY KEY IDENTITY,
    Age INT DEFAULT 18, 
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email VARCHAR(40) UNIQUE,
    Phone VARCHAR(25) UNIQUE
);

ALTER TABLE customers
ADD customerAddress NVARCHAR(90) NULL;

ALTER TABLE customers
DROP COLUMN customerAddress;

ALTER TABLE customers
ALTER COLUMN FirstName NVARCHAR(100);

