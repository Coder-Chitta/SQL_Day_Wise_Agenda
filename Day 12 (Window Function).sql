# Window Function
create database window_db;

use window_db;

create table employee
(
name varchar(50),
age int not null,
department varchar(50),
salary int,
country varchar(50)
);

insert into employee (name,age,department,salary,country)
values
('Deep',25,'sales',50000,'India'),
('Suresh',22,'Finance',20000,'Aus'),
('Ram',28,'Finance',30000,'India'),
('Pradeep',22,'sales',15000,'Aus'),
('Ramesh',20,'Finance',10000,'India'),
('Akshay',27,'Operation',15000,'Aus'),
('Anurag',25,'Operation',20000,'India');

select * from employee;

-- select col_name, window_fun(col_name) over (partition by col_name order by col_name) as col_name from table;

-- Find average salary of employee for each department
select name,age,department,salary,country,avg(salary) over (partition by department) as avg_salary from employee;
-- order by age
select name,age,department,salary,country,avg(salary) over (partition by department order by age) as avg_salary from employee;

-- total salary of employee for each department
select *, sum(salary) over (partition by department) as total_salary from employee;

-- rank() and dense_rank()
select *, rank() over (partition by department) as employee_rank,
dense_rank() over (partition by department) as emp_dense_rank from employee;

-- with order by
select *, rank() over (partition by department order by salary desc) as employee_rank,
dense_rank() over (partition by department order by salary desc) as emp_dense_rank from employee;

-- row_number 
select *, rank() over (partition by department order by salary desc) as employee_rank,
dense_rank() over (partition by department order by salary desc) as emp_dense_rank,
row_number() over (partition by department order by salary desc) as emp_row_number from employee;




