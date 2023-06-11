# Arithematic Operator

use product;

create table products(
product_id int primary key,
product_name varchar(30),
mrp int,
price int,
ownername varchar(50)
);

insert into products (product_id, product_name, mrp, price, ownername)
values
('1','desktop',800,700,'Vishal'),
('2','laptop',200,100,'Akhil'),
('3','tablet',400,300,'Sushma'),
('4','printer',500,300,'Anurag'),
('5','tablet',700,350,'Darshan'),
('6','printer',600,400,'sushma');

select product_name as pname, mrp-price as profit
from products;

select product_name , mrp-price%100 as expression
from products;

select ownername, mrp+price as expenditure
from products;


# Logical Operator
-- Select all products where mrp is >200 and <500
-- Select all records where product name is laptop and price ranging from 100 to 300

select * from products
where mrp>200 and mrp<500;

select * from products
where product_name='laptop' and price>=100 and price<=300;

-- logical in
select ownername, product_name, mrp-price as profit
from products
where ownername in ('Vishal','Akhil','sushma');

-- logical between
select * from products
where price between 100 and 300;

