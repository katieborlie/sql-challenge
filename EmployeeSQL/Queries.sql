### 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT a.emp_no, a.last_name, a.first_name, a.sex, b.salary 
FROM employees a, salaries b 
WHERE  a.emp_no = b.emp_no

-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT b.dept_no, c.dept_name, b.emp_no, a.last_name, a.first_name 
FROM employees a, dept_manager b, departments c
WHERE  b.emp_no = a.emp_no AND b.dept_no = c.dept_no

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM employees a, departments b, dept_emp c
WHERE  a.emp_no = c.emp_no AND c.dept_no = b.dept_no 

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Select first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT b.dept_name, a.emp_no, a.last_name, a.first_name 
FROM employees a, departments b, dept_emp c
WHERE b.dept_no = c.dept_no AND c.emp_no = a.emp_no AND b.dept_name = 'Sales'

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, b.dept_name
FROM employees a, departments b, dept_emp c
WHERE b.dept_no = c.dept_no AND c.emp_no = a.emp_no AND (b.dept_name = 'Sales' OR b.dept_name = 'Development')

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT(*) 
FROM employees GROUP BY last_name 
ORDER BY COUNT(*) DESC

