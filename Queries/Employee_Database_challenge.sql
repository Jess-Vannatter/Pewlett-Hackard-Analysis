	
--CHALLENGE 	
	
--DELIVERABLE 1

-- CREATE table showing all employees eligible for retiring including duplicates 
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY emp_no, emp_no DESC;
	
-- Use Dictinct with Orderby to remove duplicate rows and create new table 
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
WHERE rt.to_date = ('9999-01-01') 
ORDER BY emp_no ASC, to_date DESC;

--Retreieve number of employees by most recent job title who are eligible to retire and put in to table 
SELECT COUNT (title), title
INTO retiring_titles 
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY ut.count DESC;
	
	
--DELIVERABLE 2

--Create a new table holding the employees who are eligible to participate in the mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibility
FROM employees AS e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN titles AS t
		ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') and (de.to_date = '9999-01-01')
ORDER BY emp_no, emp_no DESC;
