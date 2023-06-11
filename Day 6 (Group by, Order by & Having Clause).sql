use product;

select * from products;

insert into products (product_id, product_name, mrp, price, ownername)
values
('7','desktop',900,500,'Anurag'),
('8','desktop',900,500,'Supriya'),
('9','tablet',400,300,'Sushma');

# distinct command
select distinct ownername from products;
select distinct product_name from products;
select distinct ownername, product_name from products;

# Grouping Functions

### aggregrate functions
select min(price) from products;

select product_name, min(price) from products
group by product_name;

select product_name, max(price) from products
group by product_name;

select sum(price) from products;

select product_name, sum(price) from products
group by product_name;

select product_name, sum(mrp), sum(price) from products
group by product_name;

select product_name, count(product_name) from products
group by product_name;

select product_name, ownername, count(product_name) from products
group by product_name, ownername;

select count(*) from products;

select product_name, count(*) from products
group by product_name;

select product_name, count(product_name) from products
group by product_name;

select product_name, avg(price) from products
group by product_name;

select product_name, avg(mrp), avg(price) from products
group by product_name;

# Order by
select product_name, price from products
order by price;

select product_name, sum(mrp) as totalprice from products
group by product_name
order by totalprice;

select product_name, sum(mrp) as totalprice from products
group by product_name
order by totalprice asc;

select product_name, sum(mrp) as totalprice from products
group by product_name
order by totalprice desc;

select product_name, sum(mrp) as totalprice from products
group by product_name
having totalprice <1000 ;

-- Having Clause
select product_name, sum(mrp) as totalprice from products
group by product_name
having totalprice > 1000 ;

# Like Statement 
---- % represents 0 ,1 or Multiple characters
select * from products
where ownername like 'a%';

select * from products
where ownername like '%a';

select * from products
where ownername like 'su%';

select * from products
where ownername like '%a%';

---- underscore (_) respresents one, single character
select * from products
where ownername like '_u%';

# 1. Find any value that start with a end with o having any thing in between
# 2. find any value that start with a and are atleast 3 characters in length 

# 1.
select * from products
where ownername like 'a%o';

# 2.
select * from products
where ownername like 'a__%';

