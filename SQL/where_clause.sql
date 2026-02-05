/* WHERE CLAUSE */

select customername, state, creditlimit
from customers
where creditlimit > 90000;

select customername, state, creditlimit
from customers
where state= 'CA' and creditlimit > 90000;

select city, creditlimit, state
from customers
where creditlimit > 70000 and creditLimit < 90000 and state= 'CA';

select city, creditlimit, state 
from customers
where (creditLimit > 70000 and creditLimit < 90000) and state= 'CA';

select city, creditlimit, state
from customers
where creditLimit between 70000 and 90000 or state in ('CA' , 'NV');




