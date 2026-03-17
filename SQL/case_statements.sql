/* CASE Statement */

Use classicmodels;

select country, creditlimit,
case 
when creditlimit > 90000 then 'A'
when creditlimit > 70000 then 'B'
when creditlimit > 60000 then 'C'
when creditlimit > 40000 then 'D'
else 'E'
end Grade
from customers;
