show databases;
create database student_managment;
use student_managment;
create table students(
	std_id int primary key,
    std_name varchar(50),
    std_roll int,
    std_email varchar(40)
);
insert into students(std_id,std_name,std_roll,std_email)
values(1,"Divya",101,"divya@gmail.com");
select * from students;
select std_name, std_email from students;

-- to alter table columns
-- to create a column with default null
alter table students
add column std_class_room varchar(20);
desc students;
alter table students
add column std_class_room varchar(20) default 'cs103';