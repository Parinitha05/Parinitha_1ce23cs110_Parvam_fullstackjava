create database sales_management;
use sales_management;

create table orders_unf(
	order_id int primary key auto_increment,
    customer_name varchar(20) not null,
    items varchar(50) not null,
    customer_city varchar(10) not null
);

insert into orders_unf(customer_name,items,customer_city)
values ("Alice","Pen-2,Book-1","Mumbai"),
       ("Bob","Book-3","Delhi"),
       ("Alice","Pen-5,pencil-3,Book-2","Mumbai");

select * from orders_unf;

create table customer_order(
	customer_id int primary key auto_increment,
    customer_name varchar(20) not null,
    cutomer_city varchar(50) not null
    );
desc customer_order;

insert into customer_order(customer_name,cutomer_city)
values("Alice","Mumbai"),
("Bob","Delhi");

select * from customer_order;

create table items(
	customer_id int primary key ,
	item_name varchar(30) not null,
    item_quantity int not null
    );
 
insert into items(customer_id,item_name,item_quantity)
values(1,"pen",2),
(1,"Book",1),
(2,"Book",3),
(1,"Pen",5),
(1,"Pencil",3),
(1,"Book",2);