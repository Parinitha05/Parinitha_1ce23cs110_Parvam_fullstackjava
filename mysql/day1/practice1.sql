create database order_managment;
use order_managment;

create table orders(
	order_id int auto_increment primary key,
    customer_name varchar(100) not null,
    product_name varchar(100) not null,
    quantity int not null,
    price decimal(10,2) not null,
    order_date date not null,
    status varchar(20) default 'pending'
);

INSERT INTO orders (customer_name, product_name, quantity, price, order_date, status) VALUES
('Alice Johnson', 'Smartphone', 1, 699.99, '2025-09-15', 'pending'),
('Bob Smith', 'Laptop', 2, 1200.50, '2025-09-16', 'completed'),
('Charlie Brown', 'Headphones', 3, 199.99, '2025-09-17', 'shipped'),
('Diana Prince', 'Tablet', 1, 350.00, '2025-09-18', 'completed'),
('Eve Adams', 'Smartwatch', 2, 150.00, '2025-09-19', 'pending'),
('Frank White', 'Keyboard', 5, 99.99, '2025-09-20', 'cancelled'),
('Grace Lee', 'Wireless Mouse', 1, 25.50, '2025-09-21', 'shipped'),
('Henry Walker', 'Monitor', 2, 220.75, '2025-09-22', 'completed'),
('Ivy Davis', 'Laptop', 1, 999.99, '2025-09-23', 'pending'),
('Jack Miller', 'Phone Case', 4, 19.99, '2025-09-24', 'completed'),
('Karen Scott', 'Gaming Console', 1, 500.00, '2025-09-25', 'shipped'),
('Louis Turner', 'Smartphone', 3, 699.99, '2025-09-26', 'pending'),
('Monica Harris', 'Charger', 2, 29.99, '2025-09-27', 'completed'),
('Nathan Perez', 'Laptop Bag', 1, 59.99, '2025-09-28', 'shipped'),
('Olivia Martinez', 'Bluetooth Speaker', 2, 129.99, '2025-09-29', 'cancelled');

select * from orders;
-- orders in ascending order
select * from orders order by price;
-- orders in descending order
select * from orders order by price desc;

-- getting the highest price
select * from orders order by price desc limit 1;

-- getting the second highest price
select * from orders order by price desc limit 1 offset 1;

-- getting columns from all the attributes in brackets
select * from orders where status in('completed','shipped','cancelled');

-- count the total no of rows
select count(*) as 'total orders' from orders;

-- maximum price
select max(price) from orders;

-- minimum price
select min(price) from orders;

-- average price
select avg(price) from orders;

-- grouping and giving the total number
select count(*), status from orders group by status;
