create database employee;
use employee;
create table departments(department_id int,department_name varchar(100));
create table location(location_id int primary key,location_name varchar(30));
drop table departments;

create table departments(department_id int primary key,department_name varchar(100));
create table employees(employee_id int primary key,employee_name varchar(50),gender enum('M','F'),age int,hire_date date,designation varchar(100),department_id int,
location_id int,salary decimal(10,2),
foreign key(department_id) references departments(department_id),
foreign key(location_id) references location(location_id));

alter table employees
add column email varchar(100);

select * from employees;

alter table employees
modify column designation varchar(200);

alter table employees
drop column age;

alter table employees
change column hire_date
date_of_joining date;

rename table departments to departments_info;
rename table location to locations;

truncate table employees;

drop table employees;
drop database employee;

create database employee;
use employee;

create table departments(department_id int primary key,department_name varchar(100) not null unique);
create table location(location_id int  auto_increment primary key,location varchar(30) not null unique);
create table employees
(employee_id int primary key,employee_name varchar(50) not null,
gender enum('M','F'),age int check(age>=18),
hire_date date default(current_date),designation varchar(100),
department_id int,location_id int,salary decimal(10,2),
foreign key(department_id) references departments(department_id),
foreign key(location_id) references location(location_id));



