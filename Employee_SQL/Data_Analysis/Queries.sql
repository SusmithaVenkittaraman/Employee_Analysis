--1.List the following details of each employee: employee number, last name, first name, sex, and salary.

select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
from employees as e
left join salaries as s
on e.emp_no=s.emp_no;

--2.List first name, last name, and hire date for employees who were hired in 1986.

select first_name,last_name,hire_date
from employees
where extract(year from hire_date)=1986;

--3.List the manager of each department with the following information: 
--department number, department name, the manager’s employee number, last name, first name.

select dm.dept_no,d.dept_name,dm.emp_no,e.first_name,e.last_name
from departments as d
join dept_manager as dm
on d.dept_no=dm.dept_no
join employees as e
on e.emp_no=dm.emp_no
order by dm.dept_no;

--4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select de.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no=de.emp_no
left join departments as d
on d.dept_no=de.dept_no

--5.List first name, last name, and sex for employees whose 
--first name is “Hercules” and last names begin with “B.”

select first_name,last_name,sex
from employees
where first_name='Hercules' and last_name like 'B%'

--6.List all employees in the Sales department, including their 
--employee number, last name, first name, and department name.

select de.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no=de.emp_no
left join departments as d
on d.dept_no=de.dept_no
where d.dept_name like '%Sales%';

--7.List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select de.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no=de.emp_no
left join departments as d
on d.dept_no=de.dept_no
where d.dept_name='Sales' or d.dept_name='Development' ;

--8.In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.

select last_name,count(emp_no) as count_of_employees
from employees
group by last_name
order by count_of_employees desc,last_name;

