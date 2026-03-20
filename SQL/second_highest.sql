/* How to find seccond highest */

use classicmodels;


-- Using Limit 

select creditlimit 
from customers 
order by creditlimit desc 
limit 1,1;


-- Using Subqueries 

select max(creditlimit)
from customers
Where creditlimit < (
select max(creditlimit) from customers);

-- Using ( Not In ) In subqueries

select max(creditlimit)
from customers
where creditLimit Not in (
select max(creditLimit) from customers);

