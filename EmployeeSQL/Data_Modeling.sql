
-- creating and importing departments table
create table departments (
	dept_no varchar not null,
	dept_name varchar not null,
	Primary Key (dept_no));

-- checking the data
select * from departments



--creating and importing titles table

create table titles (
	title_id varchar not null,
	title varchar not null,
	primary key (title_id));
	
-- checking
select * from titles



-- creating and importing employees table

create table employees (
	emp_no int not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id));

--checking
select * from employees



-- creating and importing dept_employee table	
	
create table dept_emp (
    emp_no int not null,
    dept_no varchar not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no));

-- checking
select * from dept_emp



-- creating and importing dept_manager table

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no));
	
-- checking
select * from dept_manager



-- creating table and importing salaries table

create table salaries (
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no));
	
--checking
select * from salaries
	