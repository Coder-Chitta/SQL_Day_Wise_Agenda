# Case
use customer;
select * from customer;
select * from order_details;

select *, 
case
when customer_id in (1,2,5) then 'IT'
when customer_id in (7,10) then 'HR'
end as deptname
from customer;


select *, 
case
when customer_id in (1,2,5) then 'IT'
when customer_id in (7) then 'HR'
else 'OutofComapny'
end as deptname
from customer;

-- When country India-Globe7 ,Australia - Globe7, America - Globe9
select *,
case
when country in ('India','Australia') then 'Globe7'
when country in ('America') then 'Globe9'
end as Globe
from customer;

-- When country India-Globe7 ,Australia - OutofGlobemeeting, America - Globe9
select *,
case
when country ='India' then 'Globe7'
when country ='America' then 'Globe9'
else 'Outofglobemeeting'
end as Globe
from customer;

select * from customer;
select * from order_details;

-- Howmany customers are there in each country
select country, count(*) from customer
group by country;

-- Howmany distinct customer names are there in each country
select country, count(distinct customer_name) from customer
group by country;

-- Howmany orders do we have for each customer ? (include customer name)
SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM customer AS c
left JOIN order_details AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM order_details AS o
right JOIN customer AS c ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- Howmany orders we have after April 2012 include the country name
select c.country, count(o.order_id) 
from order_details as o
left join customer as c 
on c.customer_id = o.customer_id
where order_date >= '2012-04-01'
group by c.country
;

-- howmany contact name we have for each customer and country level
select customer_name, country, count(contact_name) as countofcontact
from customer
group by customer_name, country;