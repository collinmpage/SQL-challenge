--List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
from employees as emp
inner join salaries as sal on
emp.emp_no=sal.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dep.dept_no, dep.dept_name, dm.emp_no, emp.last_name, emp.first_name
from departments as dep
	join dept_manager as dm
	ON (dep.dept_no=dm.dept_no)
	join employees as emp
	on (dm.emp_no=emp.emp_no);
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
from employees as emp
	join dept_emp as dep_e
	on (emp.emp_no=dep_e.emp_no)
	join departments as dep
	on (dep_e.dept_no=dep.dept_no);

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex
from employees
where first_name='Hercules'
and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
    join dept_emp as q
    on (e.emp_no=q.emp_no)
    join departments as d
    on (q.dept_no=d.dept_no)
    where dept_name='Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
    join dept_emp as q
    on (e.emp_no=q.emp_no)
    join departments as d
    on (q.dept_no=d.dept_no)
    where dept_name='Sales'
    or dept_name='Development';
		
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "Last_Name_Count"
from employees
group by last_name
order by "Last_Name_Count" desc;

