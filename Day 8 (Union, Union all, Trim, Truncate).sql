use customer;

# Union
select customer_id from order_details
union
select customer_id from customer;

select customer_id from order_details
union all
select customer_id from customer;

select * from
(select customer_id from order_details
union
select customer_id from customer
)a
order by customer_id asc;

# Concat
select * ,concat (customer_name,' ',contact_name) as conact
from customer;

# uppercase and lowercase
select *, ucase(customer_name), lcase(customer_name) from customer;

# Truncate
select truncate(135.345343, 3);  # only decimal value

# Trim
select trim('    Sql Tutorial    ') as value;
select ltrim('   Sql Tutorial    ') as left1, rtrim( '    Sql Tutorial   ') as right1;

# Substring
select substring('Sql class',1,3) as value