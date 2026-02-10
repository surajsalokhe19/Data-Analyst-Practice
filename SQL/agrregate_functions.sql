/* AGGREGATE FUNCTIONS */

select * from customers;

select avg(creditlimit) Average from customers;

select sum(creditlimit) 'Toatl Creditlimit' from customers;

select min(creditlimit) 'Minimum' from customers;

select max(creditlimit) 'Maximum' from customers;

select Count(creditlimit) 'Total Count is' from customers;







