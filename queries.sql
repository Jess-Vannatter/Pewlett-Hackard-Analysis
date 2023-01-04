-- Listing employees born between 1952 and 1955 - Retirment eligible 
SELECT first_name, last_name FROM employees WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
-- Getting count of those employees
SELECT COUNT(*) FROM employees WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';


--Listing employees born in 1952
SELECT first_name, last_name FROM employees WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';
--Getting count
SELECT COUNT(*) FROM employees WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';


--Listing employees born in 1953
SELECT first_name, last_name FROM employees WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';
--Getting count
SELECT COUNT(*) FROM employees WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';


--Listing employees born in 1954
SELECT first_name, last_name FROM employees WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';
--Getting count
SELECT COUNT(*) FROM employees WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';


--Listing employees born in 1955
SELECT first_name, last_name FROM employees WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';
--Getting count
SELECT COUNT(*) FROM employees WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';


-- Listing employees born between 1952-1955 and hired between 1985-1988  
SELECT first_name, last_name FROM employees WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Getting count of those employees
SELECT COUNT(*) FROM employees WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');


-- Create retirment_info table to hold employees born between 1952-1955 and hired between 1985-1988  
SELECT first_name, last_name INTO retirment_info FROM employees WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
--Show retirment_info table
SELECT * FROM retirment_info;


01/02/2023
 recreating retirement_info table to add emp numbers
SELECT emp_no, first_name, last_name INTO retirement_info FROM employees WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31') AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
SELECT * FROM retirement_info;


-- Joining departments and managers tables
SELECT d.dept_name,
	ma.emp_no,
	ma.from_date,
	ma.to_date
FROM departments AS d 
INNER JOIN managers AS ma
ON d.dept_no = ma.dept_no;


-- Joining retirment_info and dept_emp tables
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
FROM retirement_info AS ri
LEFT JOIN dept_emp AS de
ON ri.emp_no = de.emp_no;


-- Joining retirment_info and dept_emp tables and filtering to only current employees
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	de.to_date
INTO current_emp
FROM retirement_info AS ri
LEFT JOIN dept_emp AS de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

SELECT * FROM current_emp;

-- Employee count by department number
SELECT COUNT (e.emp_no), de.dept_no
INTO dept_emp_count
FROM current_emp as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;


SELECT * FROM salaries
ORDER BY to_date DESC;

-- Creating the employee information list - INNER JOIN by joining tables employees, salaries, and dept_emp
SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary, de.to_date 
INTO emp_info 
FROM employees AS e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
AND (de.to_date = '9999-01-01');

-- List of managers per department by using INNER JOIN to join tables managers, departments, and current_emp  
SELECT man.dept_no, 
	d.dept_name,
	ce.last_name,
	ce.first_name, 
	man.from_date, 
	man.to_date
INTO manager_info
from managers As man
	INNER JOIN departments AS d
		ON (man.dept_no = d.dept_no)
	INNER JOIN current_emp AS ce
		ON (man.emp_no = ce.emp_no);


-- list of employees retiring by departments by using INNER JOINS on tables current_emp, departments, and dept_emp
SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
INTO dept_info
FROM current_emp as ce
	INNER JOIN dept_emp as de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no);
		
-- creating a tailord list only showing employees in sales department eligible for retiring	
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	d.dept_name
-- INTO sales_ret_info
FROM retirement_info as ri
	INNER JOIN dept_emp as de
		ON (ri.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
	WHERE d.dept_name = ('Sales');


-- creating a tailord list only showing employees in sales and the development department eligible for retiring	
SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	d.dept_name
-- INTO sales_ret_info
FROM retirement_info as ri
	INNER JOIN dept_emp as de
		ON (ri.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
	WHERE d.dept_name IN ('Sales','Development');