/* Windows Functions */


-- Row Number
-- Rank 
-- Dense Rank 
-- Lead 
-- Lag 

use classicmodels; 

-- Row Number 

select state, country, creditLimit,
row_number() over(partition by country order by creditlimit)
from customers; 


-- RANK -- skips to the next if two values have thhe same rank 

select state, country, creditLimit,
rank () over(order by creditlimit desc)
from customers; 

-- DENSE RANK -- dosent skip the number of next rank if there are two values with same rank 

select state, country, creditLimit,
dense_rank() over(order by creditlimit)
from customers; 

-- Using aggregate functions 

select state, country, creditLimit,
sum(creditlimit) over(partition by country order by creditlimit desc) 
from customers; 


-- Lead (Pulls Next Value)

select state, country, creditLimit,
lead (creditLimit) over(partition by country order by country desc)
from customers; 


-- LAG (Push Vlaue to the Next)

select state, country, creditLimit,
lag (creditLimit) over(order by creditlimit desc)
from customers; 
 


