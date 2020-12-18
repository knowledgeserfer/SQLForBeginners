/*
BEGIN TRY
	instructions
END TRY
BEGIN CATCH
	instructions
END CATCH

ERROR_NUMBER () : Returns the error number
ERROR_MESSAGE () : Returns an error message
ERROR_SEVERITY () : Returns the severity of the error. The severity is 
a numeric value. And if it is 10 or less, then such an error is treated 
as a warning and is not processed by the TRY ... CATCH construction. 
If this value is 20 or higher, then such an error leads to the closure 
of the database connection, if it is not handled by the 
TRY ... CATCH construction.
ERROR_STATE () : Returns an error status
*/

USE productsDtb

CREATE TABLE bestCustomersList (surname NVARCHAR NOT NULL, age INT NOT NULL)
 
BEGIN TRY
    INSERT INTO bestCustomersList VALUES(NULL, NULL)
    PRINT 'Data was added successfully!'
END TRY
BEGIN CATCH
    PRINT 'Error ' + CONVERT(VARCHAR, ERROR_NUMBER()) + ':' + ERROR_MESSAGE()
END CATCH

