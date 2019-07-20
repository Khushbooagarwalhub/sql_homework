--Data Analysis--
--1.list details of each employee -employee number,last name,first name ,gender and salary
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.gender,salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no

--2.list employees who were hired in 1986
SELECT * FROM EMPLOYEES
WHERE hire_date >= '19860101' AND hire_date < '19870101';

--3.list manager of each department with the information asked
SELECT departments.dept_no,departments.dept_name,dept_manager.emp_no,dept_manager.from_date,to_date,
employees.first_name,employees.last_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;
       
--4.list department of each employee with information asked
SELECT employees.emp_no,employees.first_name,employees.last_name,departments.dept_name
FROM employees 
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

--5.List all employees whose first name is Hercules and last name begins with 'B'
SELECT *FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6.List employees in the sales department
SELECT employees.emp_no,employees.first_name,employees.last_name,departments.dept_name
FROM employees 
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--7.list employees from sales and development department
SELECT employees.emp_no,employees.first_name,employees.last_name,departments.dept_name
FROM employees 
JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--8.frequency of employees last name
 Select last_name, count(*)
 From   employees
 Group By last_name
 order by 2 DESC
 













