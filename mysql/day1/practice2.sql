create database employee_management;
use employee_management; 

create table Employee(
	emp_id bigint primary key auto_increment,
    emp_name varchar(30) not null,
    job_title varchar(30) not null,
    phone_no bigint,
    emp_salary decimal(10,2) not null,
    dept_id bigint,
    project_id bigint,
    foreign key (dept_id) references department(dept_id),
    foreign key (project_id) references project(project_id)
);

insert Employee(emp_name,job_title,phone_no,emp_salary,dept_id,project_id)
values("Divya","Developer",23464356,20000.00,1,1),
("Deepa","Developer",123456743,30000.00,2,1);

select * from Employee;
create table department(
	dept_id bigint primary key auto_increment,
    dept_name varchar(50) not null
);
insert into department(dept_name)
values ("IT"),("non IT");

create table project(
	project_id bigint primary key auto_increment,
    project_name varchar(40)
);

insert into project(project_name)
values("esm"),("cmr");
