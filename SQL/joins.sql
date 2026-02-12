/* JOINS */

Create database Joins;

Use Joins;

-- Create the Teacher table 

Create table Teacher (
	TeacherID int primary key,
    Name Varchar (50),
    Subject Varchar(50)
    );
    
    
-- Create the Student table 

Create table Student (
	StudentID int primary key,
    Name varchar (50),
    Teacher_ID int,
    Foreign key (Teacher_ID) References Teacher(TeacherID)
    );
    
-- Insert values in Teacher table Student table 

Insert into Teacher() values 

(1, 'John Smith', 'Math'),
(2, 'Jane Doe', 'English'),
(3, 'Michael', 'Science');

Insert into Student() Values

(1,'Alice johnson',1),
(2,'Bob Thombson',2),
(3,'Charlie Brown',3),
(4,'Ema Davis',1),
(5,'Frank Wilson',2),
(6,'Grace Martinez',3),
(7,'Henry Anderson',1),
(8,'Isabel lee',2);

Insert into Student(StudentID, Name) Values

(9,'Jacob clart'),
(10,'Lilly Wreight');

select * from Teacher; -- Left
select * from Student; -- Right 

    
-- Joins Query 


 -- Inner Join 
 
select	t.teacherid, t.name, s.name, s.studentid
from teacher t
inner join student s 
on t.teacherid = s.teacher_id;


-- Left Join

select	t.teacherid, t.name, s.name, s.studentid
from teacher t
left join student s 
on t.teacherid = s.teacher_id;


-- Right Join 

select	t.teacherid, t.name, s.name, s.studentid
from teacher t
right join student s 
on t.teacherid = s.teacher_id;


    
    
