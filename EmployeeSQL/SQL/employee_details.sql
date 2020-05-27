--List the following details of each employee: employee number, last name, first name, gender, and salary.
select salaries.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
from employees 
inner join salaries on salaries.emp_no = employees.emp_no
order by salaries.emp_no;