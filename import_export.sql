--query to import and export bulk data

--create a table 
create table info(id int primary key , name varchar(50) not null)

--use bulk insert command to import the csv file
BULK INSERT info
from 'D:\CFP_DATA_ENGINEERING_LYTX\mssql_repo\Mssql\import_export.csv'
with (format = 'CSV', firstrow = 2 , fieldterminator = ',' , rowterminator = '0x0a');

select * from info;

--enable xp_cmdshell
sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
sp_configure 'xp_cmdshell', 1;
GO
RECONFIGURE;
GO

EXEC sp_configure 'xp_cmdshell';


-- Export data from table to CSV file
EXEC xp_cmdshell 'bcp "SELECT * FROM info" queryout "D:\YourTable.csv" -c -t, -T -SSUSHANTSEVEN'


--disable xp_cmdshell
sp_configure 'xp_cmdshell', 0;
GO
RECONFIGURE;
GO
