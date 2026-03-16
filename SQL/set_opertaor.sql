/* Set Operator 

-- Union 
-- Union all 
-- Intersect 
-- Exception 

*/

Create database Sets ;

Use Sets;

Create table A (
	id int (10) primary key,
    Name varchar (30) not null
    );
    
Create table B (
	id int(10) primary key,
    Name varchar (30) not null,
    Grade varchar (10) not null
    );
    
Insert into A () 
values (1,'Rushi'),(2,'Neha'),(3,'Raj'),(4,'Jay');

Insert into B ()
values (1,'Adity','A'), (2,'Neha','B'), (3,'Pradip','A'),(4,'Kartik','C'),(5,'Suraj','B');

select * from A;
select * from B;

-- Union (Combine with No duplicate values) 

select id, Name  from A
Union 
select id, Name from B;


-- Union All (Takes duplocate values also while comnbining)

select id, Name  from A
Union all
select id, Name from B;

-- intersect (Takes only common value present in both)

select id, Name  from A
Intersect
select id, Name from B;



-- Exception (Removes the common values)

select id, Name  from A
Except
select id, Name from B;


-- If there are mismatched colums 

select id, Name, Null from A
Union 
select id, Name, Grade  from B;














    
    
    

