--List the following details of each employee: employee number, last name, first name, gender, and salary.
select salaries.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees 
inner join salaries on salaries.emp_no = employees.emp_no
order by salaries.emp_no;

--List employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date 
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
from dept_manager as dm
inner join departments as d on dm.dept_no=d.dept_no
left join employees as e on dm.emp_no=e.emp_no;
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no;
	
--List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on de.dept_no = d.dept_no
where d.dept_name in ('Sales','Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) as frequency_count
from employees
group by last_name
order by frequency_count DESC