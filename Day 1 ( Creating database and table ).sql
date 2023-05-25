create database SQLTEST;

use sqltest;

create table product(
product_id int primary key,
product_name varchar(50),
Mrp int,
Price int,
Ownername varchar(100)
);