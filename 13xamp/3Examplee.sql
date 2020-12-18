DECLARE @iteration INT
SET @iteration = 1
WHILE @iteration <= 10
BEGIN
    PRINT @iteration
    SET @iteration = @iteration + 1
END

DECLARE @number INT, @factorial INT
SET @factorial = 1;
SET @number = 5;--1*2*3*4*5=120 
WHILE @number > 0
    BEGIN
        SET @factorial = @factorial * @number
        SET @number = @number - 1
    END;
 
PRINT @factorial


DECLARE @number INT
SET @number = 1
 
WHILE @number < 10
    BEGIN
        PRINT CONVERT(NVARCHAR, @number)
        SET @number = @number + 1
        IF @number = 5
            CONTINUE;
        PRINT 'Mark of the iteration end'
    END;
	
	

DECLARE @number INT
SET @number = 1
 
WHILE @number < 10
    BEGIN
        PRINT CONVERT(NVARCHAR, @number)
        SET @number = @number + 1
        IF @number = 5
            BREAK;
        PRINT 'Mark of the iteration end'
    END;