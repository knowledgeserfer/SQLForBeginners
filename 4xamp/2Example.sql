USE contactsDtb

/*
The ON DELETE and ON UPDATE statements can be used to set the actions to be taken, 
respectively, when a related row is deleted and modified from the main table. 
And to define the action, we can use the following options:

CASCADE : Automatically deletes or modifies rows from a dependent table when 
deleting or modifying related rows in the main table.

NO ACTION : Prevents any action on the dependent table when deleting or modifying 
related rows in the main table. That is, in fact, there are no actions.

SET NULL : Sets the foreign key column to NULL when deleting a related row from 
the master table.

SET DEFAULT : When deleting a related row from the master table, sets the 
foreign key column to the default value, which is set using the DEFAULT attributes. 
If no default is specified for a column, NULL is used.
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

CREATE TABLE orders
(
    Id INT PRIMARY KEY IDENTITY,
    CustomerId INT,
    CreatedAt Date,
    FOREIGN KEY (CustomerId) REFERENCES customers (Id) ON DELETE CASCADE
);

DROP TABLE orders, customers