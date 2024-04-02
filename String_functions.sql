--String functions

--Ascii
SELECT ASCII('A'), ASCII('AB') , ASCII('B')

--Character index
SELECT CHARINDEX('World','Hello World'),CHARINDEX('World','Hello World',8) --8 is the start location

--Concate functions
SELECT CONCAT('Hello',' World')

--Concat with symbol
SELECT CONCAT_WS(',','United States','New York')

--Sound index
SELECT SOUNDEX('H'), SOUNDEX('He'), SOUNDEX('Hello'), SOUNDEX('Hello World')

--Difference
SELECT DIFFERENCE('HELLO','BICYCLE'), DIFFERENCE('HELLO', 'HELLO')

--Left right
SELECT LEFT('Hello World',5) , RIGHT('Hello Wolrd',5)

--Lower case
SELECT LOWER('Hello World') , UPPER('Hello World')

--Trim, Ltrim and Rtrim
SELECT RTRIM('Hello  ') , LTRIM('    World'), TRIM('    iko  ');

