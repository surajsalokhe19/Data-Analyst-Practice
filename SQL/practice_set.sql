-- Practice set 
 
create database practice;

use practice;

-- Create table: Departments 

CREATE TABLE Departments 
(     
dept_id INT PRIMARY KEY,     
dept_name VARCHAR(50),     
location VARCHAR(50) 
);

-- Create table: Employees 

CREATE TABLE Employees 
(     
emp_id INT PRIMARY KEY,     
emp_name VARCHAR(50),     
dept_id INT,     
salary DECIMAL(10,2),     
hire_date DATE,     
manager_id INT,     
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Create table: Projects 

CREATE TABLE Projects 
(     
project_id VARCHAR(10) PRIMARY KEY,     
project_name VARCHAR(50),     
dept_id INT,     
budget DECIMAL(12,2),     
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Create table: Employee_Project (many-to-many relationship) 

CREATE TABLE Employee_Project 
(     
emp_id INT,     
project_id VARCHAR(10),     
hours_worked INT,     
PRIMARY KEY (emp_id, project_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);


-- Insert Departments

INSERT INTO Departments VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'Chicago'),
(3, 'Finance', 'San Francisco');


-- Insert Employees

INSERT INTO Employees VALUES
(101, 'John Smith', 1, 60000, '2018-06-01', 201),
(102, 'Alice Brown', 2, 75000, '2019-07-12', 203),
(103, 'David Clark', 1, 50000, '2020-01-10', 201),
(104, 'Emma Davis', 3, 80000, '2021-02-21', 203),
(105, 'Mark Lee', 2, 72000, '2017-11-23', 203),
(106, 'Sara Wilson', 3, 65000, '2020-12-10', 203),
(107, 'Bob King', 1, 55000, '2022-05-14', 201);


-- Insert Projects

INSERT INTO Projects VALUES
('P01', 'Alpha', 1, 150000),
('P02', 'Beta', 2, 300000),
('P03', 'Gamma', 3, 200000),
('P04', 'Delta', 2, 250000);


-- Insert Employee_Project

INSERT INTO Employee_Project VALUES
(101, 'P01', 40),
(102, 'P02', 60),
(103, 'P01', 45),
(104, 'P03', 70),
(105, 'P02', 50),
(106, 'P03', 65),
(107, 'P04', 30);

select * from departments;
select * from employee_project;
select * from employees;
select * from projects;

-- Practice set Section 1 

-- Q.1
Alter table employees
add Email varchar(50) not null;

select * from employees;


-- Q.2 
Alter table employees
rename column hire_date to joining_date;

select * from employees;

-- Q.3 


-- Q.4
select e.emp_name, d.dept_name, (e.salary * 1.1) as 'increament'
from employees e
join departments d on e.dept_id = d.dept_id 
where dept_name = 'IT';

select * from employees;

-- Q.5
drop table employee_project;


-- Practice set Section 2

-- Q.1 
select * 
from employees 
where salary > 60000;


-- Q.2 
select emp_id, emp_name, joining_date
from employees 
where joining_date > 2020-01-01;

-- Q.3
select e.emp_id, e.emp_name, d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name= 'IT';


-- Q.4 
select sum(e.salary),d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id

group by d.dept_name;


-- Q.5
select avg(e.salary),d.dept_name 
from employees e
join departments d on e.dept_id = d.dept_id
group by d.dept_name
having avg(e.salary)>65000; -- DOUBT


-- Q.6
select count(e.emp_id)as 'no of emps', d.dept_name 
from employees e
join departments d on e.dept_id = d.dept_id
group by dept_name;


-- Q.7
select emp_name,salary
from employees 
order by salary desc;


-- Q.8
select e.emp_name,d.dept_name 
from employees e
join departments d on e.dept_id = d.dept_id
where d.dept_name = 'Finance'; 


-- Q.9
select dept_name,location
from departments
where location in ('Chicago', 'New York');


-- Q.10
select emp_name 
from employees 
where emp_name like 'A%'; 


-- Practice set Section 3

-- Q.1 
select e.emp_id,e.emp_name,d.dept_name 
from employees e
join departments d on e.dept_id = d.dept_id;


-- Q.2 
select e.emp_id,e.emp_name,d.dept_name 
from employees e
left join departments d on e.dept_id = d.dept_id;  -- DOUBT


-- Q.3
select d.dept_name, e.emp_name 
from departments d
right join employees e on d.dept_id = e.dept_id;


-- Q.4


-- Q.5
select e1.emp_name, e2.manager_id
from employees e1

join employees e2 on e1.emp_id = e2.emp_id;

-- Q.6 
select e.emp_name, p.project_name
from employees e 
join projects p on e.dept_id = p.dept_id
where project_name = null;   -- DOUBT


-- Q.7
select e1.emp_name, e2.hours_worked
from employees e1
join employee_project e2 on e1.emp_id = e2.emp_id;


-- Q.8
select e.emp_name,d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'HR'
union
select e.emp_name, d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'IT';


-- Q.9 
select e.emp_name, d.location
from employees e
join departments d on e.dept_id = d.dept_id
where location = ('Chicago');

-- Q.10
select p.project_name, d.dept_name 
from projects p
join departments d on p.dept_id = d.dept_id ;


-- Practice set Section 4

-- Q.1
select e.emp_name,d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'HR'
union
select e.emp_name, d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'IT';


-- Q.2 
select e.emp_name,d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'HR'
intersect
select e.emp_name, d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'IT';

-- Q.3
select e.emp_name,d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'HR'
except
select e.emp_name, d.dept_name
from employees e
join departments d on e.dept_id = d.dept_id
where dept_name = 'IT';



-- Q.4 





