
SELECT employee.emp_no, employee.first_name, employee.last_name, employee.sex, salaries.salary
FROM employee
INNER JOIN salaries ON
employee.emp_no=salaries.emp_no;

SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.hire_date>= '1986-01-01' and
employee.hire_date< '1987-01-01';

SELECT employee.emp_no, employee.first_name, employee.last_name, departments.dept_no,departments.dept_name 
FROM employee
INNER JOIN dept_manager ON
employee.emp_no=dept_manager.emp_no
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no;

SELECT employee.emp_no, employee.first_name, employee.last_name,departments.dept_name 
FROM employee
INNER JOIN dept_emp ON
employee.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no;

SELECT employee.emp_no, employee.first_name, employee.last_name 
FROM employee
WHERE employee.first_name= 'Hercules' and
employee.last_name LIKE 'B%'

SELECT employee.emp_no, employee.first_name, employee.last_name,departments.dept_name 
FROM employee
INNER JOIN dept_emp ON
employee.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
where departments.dept_name= 'Sales';

SELECT employee.emp_no, employee.first_name, employee.last_name,departments.dept_name 
FROM employee
INNER JOIN dept_emp ON
employee.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
where departments.dept_name= 'Sales' or
departments.dept_name= 'Development';

SELECT employee.last_name, COUNT(employee.last_name) as Frequency
FROM employee
GROUP BY employee.last_name
ORDER BY COUNT(employee.last_name)DESC;