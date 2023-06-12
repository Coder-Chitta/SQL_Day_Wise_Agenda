use product;

create table product_info(
product_id int primary key,
product_name varchar(50),
mrp int,
price int,
ownername varchar(100)
);

insert into product_info(product_id,product_name,mrp,price,ownername)
values
(1,'Desktop',800,700,'Vishal'),
(2,'Laptop',1200,1000,'Akhil'),
(3,'Tablet',200,150,'Sushma'),
(4,'Laptop',350,320,'Sunil'),
(5,'Printer',150,120,'Darshan'),
(6,'Tablet',180,120,'Sushma');

select * from product_info;

-- what is the profit that each person has made here (profit = mrp - prrice)
select ownername, (mrp-price) as profit from product_info;

-- write a sql query to get all the products where mrp is less than 500 and price is greater than 200
select product_name from product_info
where mrp < 500 and price > 200;

-- select all the products where mrp is between 100 and 500 or those products where price is less than 500
select product_name from product_info
where mrp between 100 and 500 or price < 500;

-- ownername whose name starts with s
select ownername from product_info
where ownername like 'S%';

-- any operator
select product_name from product_info
where mrp = any ( select mrp from product_info where mrp > 300);

-- all operator
select product_name from product_info
where mrp = all ( select mrp from product_info where mrp > 300);

-- count of all unique products
select count(distinct product_name) from product_info;

-- count of all the products grouped by product name which have more than 1 count
select product_name, count(product_name) as count from product_info
group by product_name
having count >1;

-- min(mrp) of each product_name and owner name as a combined group

SELECT product_name, MIN(mrp) AS min_mrp FROM product_info
GROUP BY product_name;

SELECT p.product_name, p.ownername, p.mrp AS min_mrp
FROM product_info p
WHERE p.mrp IN (
    SELECT MIN(mrp)
    FROM product_info
    WHERE product_name = p.product_name
);
