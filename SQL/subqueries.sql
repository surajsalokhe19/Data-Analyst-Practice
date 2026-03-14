/* Subqueries */

-- Query inside the query 


select customername, customerNumber, creditlimit
from customers
where customerNumber in (
		select customerNumber from orders);
        
select customername, customerNumber, creditlimit
from customers
where customerNumber in (
		select customerNumber from orders); -- Atleast one order 
        
        
select productname, buyprice
from products
where buyprice = (
select max(buyPrice) from products);

select productname, buyprice
from products
where buyprice = (
select max(buyPrice) from products);



select customername, creditlimit 
from customers
where creditLimit > (select avg(creditLimit) from customers);


select customername, creditlimit
from customers
where creditLimit > (select avg(creditLimit) from customers);



