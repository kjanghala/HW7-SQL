-- q 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary 
FROM employees, salaries 
WHERE employees.emp_no = salaries.emp_no

-- q 2
SELECT emp_no, first_name, last_name, hire_date
FROM employees 
WHERE hire_date LIKE '1986%'

-- q 3
SELECT d.dept_no, d.department_name, dm.emp_no, e.first_name, e.last_name, dm.from_date, dm.to_date
FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON  dm.emp_no = e.emp_no

-- q 4
SELECT e.emp_no, e.last_name, e.first_name, d.department_name
FROM departments d JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON  dm.emp_no = e.emp_no

-- q 5
SELECT emp_no, first_name, last_name
FROM employees e
WHERE first_name = 'Hercules' AND last_name LIKE'B%'

-- q 6
SELECT d.department_name, de.emp_no, e.first_name, e.last_name
FROM departments d JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON  de.emp_no = e.emp_no
WHERE d.department_name  = 'Sales'

-- q 7
SELECT d.department_name, de.emp_no, e.first_name, e.last_name
FROM departments d JOIN dept_emp de ON d.dept_no = de.dept_no
JOIN employees e ON  de.emp_no = e.emp_no
WHERE d.department_name  = 'Sales' OR d.department_name =  'Development'

-- q 8
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC