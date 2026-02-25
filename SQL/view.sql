-- Creating View 

create view `sample` as 
with cust_sales as (
	select o.customernumber,
		sum(od.quantityOrdered * od.priceeach) total_sales
	from orders o
    inner join orderdetails od 
    on o.orderNumber = od.orderNumber
    group by o.customerNumber
)
select c.customername, cs.total_sales
from customers c
inner join cust_sales cs
on c.customernumber = cs.customernumber;

select * from sample;