use customer;

## Subquery
select * from 
( 
select * from customer
where country = 'India'
)a
where a.customer_id = 7; 

select * from 
(
select * from customer
where contact_name = 'Anand'
)a
where a.customer_id = 7;

## Scaler Subquery
select customer_name, country from customer 
where customer_id = (select max(customer_id) as max_id from customer);

-- using logical operators
select order_id, order_date from order_details where customer_id > (select min(customer_id) as min_id from customer);
select customer_id, customer_name, country from customer c where c.customer_id in (select o.customer_id from order_details o);
select customer_id, customer_name, country from customer c where c.customer_id not in (select o.customer_id from order_details o);

## Row Subquery
select * from customer where (customer_id, country) in (select customer_id, country from customer where country = 'India');

## Subquery with exists and not exists
select max(customer_id) from customer where exists (select customer_id from order_details);


-- customer name and country of order id 103
select customer_name, country from customer c
where c.customer_id = (select o.customer_id from order_details o where order_id = 103);

-- extract order_id for the customers in india
select * from order_details;
select * from customer;

select order_id from order_details o
where o.customer_id in (select c.customer_id from customer c where country = 'India');

-- extract the count of order_id where customer name is alex
select count(order_id) from order_details o where o.customer_id in (select c.customer_id from customer c where customer_name = 'Alex');

-- extract the name of the customer who has ordered from jan to july
select customer_name from customer c where c.customer_id in (select o.customer_id from order_details o where month(order_date) between 1 and 7);

-- extract the name of the customer and country who has recently oredred (latest order_id from order table)
select customer_name, country from customer c 
where c.customer_id in (select o.customer_id from order_details o where o.order_id = (select max(order_id) from order_details));

select customer_name, country from customer 
where customer_id in (select customer_id from (select max(order_id) as max, customer_id from order_details group by customer_id order by max desc limit 1)a);

-- extract customer name and country of order_id, customer_id = 102,2 and 104,7
select customer_name, country from customer c 
where c.customer_id in (select o.customer_id from order_details o where (order_id=102 and customer_id = 2) or (order_id=104 and customer_id = 7));

select customer_name, country from customer c 
where c.customer_id in (select o.customer_id from order_details o where order_id in (102,104) and customer_id in (2,7));

