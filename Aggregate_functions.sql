--Agregate functions

use Python_sql;

select * from Orders;

--Sum function
select sum(totalAmount) as total from Orders;

--Minimum
select min(totalAmount) as minimum from Orders;

--Maximum
select max(totalAmount) as maximum from Orders;

--Average
select avg(totalAmount) as avegrage_amount from Orders;

--Standard deviation
select Stdev(totalAmount) as deviation from Orders;

--Variance
select var(totalAmount) as variance from Orders;


