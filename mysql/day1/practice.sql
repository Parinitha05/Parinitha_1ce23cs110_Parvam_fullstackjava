create database employee_details;
use employee_details;
create table employee(
	emp_id int primary key,
    emp_name varchar(30),
    emp_department varchar(50),
    emp_salary decimal(10,2)
);

insert into employee(emp_id,emp_name,emp_department,emp_salary)
values(1,"Divya","HR",25000.00),
      (2,"Priya","Manager",20000.00),
      (3,"Keerthi","AM",15000.00);
      
select * from employee;
select emp_id,emp_name from employee;

alter table employee
add column emp_age int;
desc employee;

select * from employee limit 2;

select * from employee where emp_id=1;
-- we use offset and limit in pagination
-- this command will skip 1 row(offset) and give next 2 columns(limit)
select * from employee limit 2 offset 1;

-- updating table
update  employee
set emp_salary=30000.00
where emp_id=1;

-- delete from students will delete all rows
-- delete perticular row
delete from employee where emp_id=3;

-- truncate delete every row and create new table
truncate employee;

-- delete table
drop table employee;

-- delete database
drop database employee_datails;

-- current database
select database();

