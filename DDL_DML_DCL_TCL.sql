-- Data definition language commands

use Python_sql; --selecting database

--Create
CREATE TABLE Books (Id INT PRIMARY KEY IDENTITY(1,1), Name VARCHAR (50) NOT NULL, Price INT);

--Alter
ALTER TABLE Books ADD ISBN INT NOT NULL; --adding new column
ALTER TABLE Books alter COLUMN ISBN VARCHAR(50); -- modifying existig column

--Drop
DROP TABLE Books;

--Truncate
TRUNCATE TABLE Books;

--Data manipulation anguage commands

--insert
Insert into Books values('Harry Potter', 127, 101);

--Select
select * from Books;

--Update
UPDATE Books SET Name='Prince of Persia' Where ISBN = 101;

--Delete
DELETE FROM Books Where ISBN=101;

--Data control language commands

--Grant
GRANT SELECT, UPDATE ON Books TO sushant;  

--Revoke
REVOKE SELECT, UPDATE ON Books FROM sushant;  

--Transaction control language commands

--Commit
COMMIT;  

--Rolback
ROLLBACK;
  