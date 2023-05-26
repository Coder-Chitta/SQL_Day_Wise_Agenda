create database product;

use product;

create table product(
product_id int primary key,
product_name varchar(50),
Mrp int,
Price int,
Ownername varchar(100)
);

insert into product(product_id, product_name, Mrp, Price, Ownername)
values
('1','Brush','10','8','colgate'),
('2','Toothpaste','30','25','Colgate'),
('3','Cake','10','10','Britania'),
('4','Biscuit','12','10','Goodday'),
('5','Colddrinks','15','12','Sprite');

select * from product
limit 3;

select * from product
where Ownername = 'colgate'
and Mrp <30;

select * from product
where Mrp > 10 and Mrp <50;

select * from product
where product_name = 'Brush' or product_name = 'Cake';

