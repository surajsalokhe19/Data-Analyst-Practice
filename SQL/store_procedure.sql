-- Store Procedures 

DELIMITER $$ 
create procedure ok (in crd int(10), in country varchar (40))
begin
select country, creditlimit
	from customers
	where creditlimit > crd and country = country;
end $$
DELIMITER $$

call ok (90000, 'USA');
call ok (80000, 'Spain');