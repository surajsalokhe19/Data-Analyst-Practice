/* GROUP BY 
	ORDER BY */
    
select country, sum(creditlimit)
from customers
group by country
order by country desc;

select sum(creditlimit), state 
from customers 
group by state
order by sum(creditlimit) desc;

select state, avg(creditlimit), city
from customers
group by state, city
order by city asc;


/*
COMPLEX EXAMPLE 
*/
select city, sum(creditlimit)
from customers
group by city
having sum(creditlimit) > 90000
order by city desc;





