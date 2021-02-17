drop table dept_manager

--Schema.sql
--title table
CREATE TABLE titles (
    title_id varchar NOT NULL PRIMARY KEY,
    title varchar NOT NULL
);

--employees table
CREATE TABLE employees (
    emp_no int   NOT NULL PRIMARY KEY,
    emp_title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

--departments table
CREATE TABLE departments (
    dept_no varchar NOT NULL PRIMARY KEY ,
    dept_name varchar   NOT NULL
);

--dept_manager table
CREATE TABLE dept_manager (
	dept_no varchar NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (emp_no,dept_no)
);

--dept_employee table
CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    dept_no varchar   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

--salaries table
CREATE TABLE salaries (
    emp_no int   NOT NULL PRIMARY KEY,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary int   NOT NULL
);


--checking the data_insert
select * from titles
select * from employees
select * from departments
select * from dept_manager
select * from dept_emp
select * from salaries
