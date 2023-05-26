# Creating Database
create database school;

use school;

#creating table
create table student_info(
college_id int primary key,
college_name varchar(40),
branch varchar(15)
);

#Adding Column
alter table student_info
add cgpa int;

alter table student_info
add address varchar(50);

#Inserting Values
insert into student_info (college_id,college_name,branch,cgpa,address)
values
(1,'abc','Science',54,'Delhi'),
(2,'xyz','Arts',90,'Bangalore'),
(3,'def','arts',99,'Mumbai');

#Dropping Column
alter table student_info
add pincode varchar(50);

alter table student_info
drop column pincode;

#Renaming Column
alter table student_info
rename column branch to stream;

#Changing datatype
alter table student_info
add dob int;

alter table student_info
modify dob date;

select * from student_info;

#Truncate
truncate table student_info;

#Drop
drop table student_info;
