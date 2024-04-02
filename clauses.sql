-- Clauses in sql

select * from Customers;
select * from orders;

-- order by clause
select * from Customers order by FirstName; -- sort the records based on the based on the first name

-- Group by
select count(*), CustomerID from Orders group by CustomerID;

-- where clause
select * from Customers where CustomerID = 101

-- having clause
select CustomerID, sum(TotalAmount) from Orders group by CustomerID having sum(TotalAmount) > 1000;