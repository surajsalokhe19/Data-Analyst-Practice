/*
LIKE OPERSTION 
*/

/* Starts With */

select customerName 
from customers
where customerName like 'a%';

/* Ends With */

select customerName 
from customers
where customerName like '%e';

/* Complex Example */

select customerName
from customers
where customerName like 'a_e%';







