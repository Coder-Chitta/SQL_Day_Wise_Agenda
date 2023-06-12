create database customer;

use customer;

create table order_details
(
order_id int,
customer_id int primary key,
order_date date
);

insert into order_details (order_id, customer_id, order_date)
values
(101,2,'12-01-01'),
(102,4,'12-12-31'),
(103,5,'12-06-04'),
(104,7,'12-09-01'),
(105,9,'12-08-26');

select * from order_details;

create table customer
(
customer_id int primary key,
customer_name varchar(100),
contact_name varchar(100),
country varchar(100)
);

insert into customer (customer_id, customer_name, contact_name, country)
values
(1, 'Anurag', 'Maria', 'India'),
(2, 'Sushma', 'Ana', 'Australia'),
(5, 'Preeti', 'Moreno', 'America'),
(7, 'Alex', 'Anand', 'India'),
(10, 'Parth', 'Meghna', 'India');

select * from customer;

# Join
## Inner Join

select * from order_details
inner join
customer on order_details.customer_id = customer.customer_id;

select * from order_details as o
inner join
customer as c on o.customer_id = c.customer_id;

-- Customer id in the field is ambiguous
-- select customer_id , customer_name , contact_name from order_details 
-- inner join
--  customer on order_details.customer_id = customer.customer_id;

select o.customer_id, c.customer_name, c.contact_name from order_details as o
inner join
customer as c on o.customer_id = c.customer_id;

## Left Join
select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id;

select * from customer as c
left join
order_details as o on o.customer_id = c.customer_id;

select o.customer_id, c.customer_name, c.contact_name from order_details as o
left join
customer as c on o.customer_id = c.customer_id;

-- All details from order table and only customer name from customer table
select o.* ,c.customer_name from order_details as o
left join
customer as c on o.customer_id = c.customer_id;

-- Only those records where we have no null values
select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id
where c.customer_id is not null;

-- where null
select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id
where c.customer_id is null;

-- Customer id 2,5 and 9
select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id
where o.customer_id = 2 or o.customer_id = 4 or o.customer_id = 9;

select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id
where o.customer_id in (2,4,9);

-- all details from 1-1-2012 to 30-06-2012
select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id
where o.order_date >= '2012-01-01' and o.order_date <= '2012-06-30';

select * from order_details as o
left join
customer as c on o.customer_id = c.customer_id
where o.order_date between '2012-01-01' and '2012-06-30';


## Right Join
select * from order_details as o
right join
customer as c on o.customer_id = c.customer_id;

## Self Join
select a.customer_name as customer1, b.customer_name as customer2, a.country
from customer as a, customer as b
where a.customer_id != b.customer_id
and a.country = b.country;

## Cross Join - No on Condition
select * from order_details as o
cross join
customer as c;

-- If condition is there with cross join it will be treatedas inner join
select * from order_details as o
cross join
customer as c on o.customer_id = c.customer_id;


