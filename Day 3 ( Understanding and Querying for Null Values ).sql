CREATE DATABASE employee;

USE employee;

CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  name VARCHAR(100),
  designation VARCHAR(100),
  company VARCHAR(100),
  years_of_experience int,
  salary DECIMAL(10, 2)  
);

USE employee;


INSERT INTO employee (employee_id, name, designation, company, years_of_experience, salary)
VALUES
  (1, 'Aarav Gupta', 'HR', 'Tata Consultancy Services', 7, 8.5),
  (2, 'Aditi Singh', 'Engineer', 'Infosys', 4, 6.2),
  (3, 'Advait Desai', 'Intern', 'Wipro', 0, 1.5),
  (4, 'Aishwarya Patel', 'Data Engineer', 'HCL Technologies', 3, 5.8),
  (5, 'Akshay Sharma', 'Manager', 'Tech Mahindra', 9, 9.8),
  (6, 'Amrita Verma', 'Analyst', 'Capgemini', 0, 1.2),
  (7, 'Ananya Reddy', 'System Engineer', 'Accenture', 5, 7.1),
  (8, 'Ankit Bhatia', 'Manager', 'Tata Consultancy Services', 6, 7.9),
  (9, 'Aaradhya Gupta', 'Intern', 'Wipro', 0, 1.8),
  (10, 'Arjun Kumar', 'Data Engineer', 'HCL Technologies', 4, 6.5),
  (11, 'Aanya Joshi', 'Manager', 'Tech Mahindra', 8, 8.3),
  (12, 'Abhinav Singh', 'Intern', 'Capgemini', 0, 1.4),
  (13, 'Aisha Sharma', 'Engineer', 'Infosys', 3, 5.5),
  (14, 'Aditya Patel', 'Data Scientist', 'Tata Consultancy Services', 10, 9.5),
  (15, 'Anika Verma', 'Intern', 'Wipro', 0, 1.6),
  (16, 'Arnav Reddy', 'Engineer', 'HCL Technologies', 4, 6.7),
  (17, 'Avni Bhatia', 'Manager', 'Tech Mahindra', 7, 8.7),
  (18, 'Aadit Desai', 'Intern', 'Capgemini', 0, NULL),
  (19, 'Anvi Kumar', 'Engineer', 'Accenture', 2, 4.8),
  (20, 'Aryan Sharma', 'Manager', 'Tata Consultancy Services', 5, 6.5),
  (21, 'Anaya Joshi', 'Data Scientist', 'Wipro', 0, 1.3),
  (22, 'Atharv Singh', 'Engineer', 'HCL Technologies', 4, 6.2),
  (23, 'Anushka Gupta', 'Analyst', 'Tech Mahindra', 9, 9.2),
  (24, 'Advika Patel', 'HR', 'Capgemini', 0, NULL),
  (25, 'Aayush Verma', 'Engineer', 'Infosys', 3, 5.9),
  (26, 'Aarna Bhatia', 'HR', 'Tata Consultancy Services', 6, 7.8),
  (27, 'Avani Reddy', 'Data Analyst', 'Wipro', 0, 1.9),
  (28, 'Arin Singh', 'System Engineer', 'IBM',1,2),
  (29,'Chitta Ranjan',Null,'Google',2,5.9),
  (30,'Anurag Chouhan','HR',Null,2,6.7);

select * from employee
where salary is null;

select * from employee
where salary is not null;

select * from employee
where salary = 'NULL';

select * from employee 
where salary <> 'Null';

