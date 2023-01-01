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