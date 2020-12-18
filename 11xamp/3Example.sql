/*GETDATE: Returns the current local date and time based on the system clock as a datetime 
object
*/
SELECT GETDATE()

/*GETUTCDATE: Returns the current local date and time in Greenwich Mean Time (UTC / GMT) 
as a datetime object
*/
SELECT GETUTCDATE()

/*SYSDATETIME: Returns the current local date and time based on the system clock, but the 
difference from GETDATE is that the date and time are returned as a datetime2 object
*/
SELECT SYSDATETIME()

/*SYSUTCDATETIME: Returns the current local date and time in Greenwich Mean Time (UTC / GMT) 
as a datetime2 object*/
SELECT SYSUTCDATETIME()

/*SYSDATETIMEOFFSET: Returns a datetimeoffset (7) object that contains the date and time 
relative to GMT*/
SELECT SYSDATETIMEOFFSET()

/*DAY: returns the day of the date, which is passed as a parameter*/
SELECT DAY(GETDATE())

/*MONTH: Returns the month of the date*/
SELECT MONTH(GETDATE())

/*YEAR: Returns the year from a date*/
SELECT YEAR(GETDATE())

/*DATENAME: Returns the date portion as a string. The parameter to select the part of 
the date is passed as the first parameter, and the date itself is passed as the second 
parameter
year (yy, yyyy)
quarter (qq, q)
month (mm, m)
dayofyear (dy, y)
day (dd, d)
week (wk, ww)
*/
SELECT DATENAME(month, GETDATE())

/*DATEPART: Returns part of the date as a number. The parameter for selecting part of the date 
is passed as the first parameter (the same parameters are used as for DATENAME), and the 
date itself is passed as the second parameter*/
SELECT DATEPART(month, GETDATE())

/*DATEADD: Returns a date that is the result of adding a number to a specific date component. 
The first parameter represents the date component described above for the DATENAME function. 
The second parameter is the amount to add. The third parameter is the date itself to which 
you need to add*/
SELECT DATEADD(month, 3, '2020-7-28')
SELECT DATEADD(day, 3, '2020-8-28')

/*DATEDIFF: Returns the difference between two dates. 
The first parameter is the date component, which indicates in which units the difference 
should be measured. The second and third parameters are the dates to be compared*/
SELECT DATEDIFF(year, '2019-7-28', '2020-9-28')
SELECT DATEDIFF(month, '2020-5-28', '2020-7-28')
SELECT DATEDIFF(day, '2020-6-28', '2020-7-28')

/*EOMONTH: Returns the date of the last day for the month used in the date passed as 
a parameter.*/
SELECT EOMONTH('2020-07-05')

/*DATEFROMPARTS: by year, month and day creates a date*/
SELECT DATEFROMPARTS(2020, 8, 31)

/*ISDATE: Checks if the expression is a date. If so, it returns 1, otherwise it returns 0.*/
SELECT ISDATE('2020-07-28')
SELECT ISDATE('2020-28-07')
SELECT ISDATE('Some text')
