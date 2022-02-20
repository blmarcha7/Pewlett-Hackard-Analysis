
--retirement titles table
SELECT emp.emp_no,
	emp.first_name,
	emp.last_name,
tit.title,
tit.from_date,
tit.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles AS tit
ON (emp.emp_no = tit.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

--creating a unique titles csv
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01') 
ORDER BY rt.emp_no, rt.to_date DESC;
-- creating a retiring titles table
SELECT COUNT(title),title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

--membership eligibilty table
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
	emp.first_name,
	emp.last_name,
	emp.birth_date,
de.from_date,
de.to_date,
tit.title
INTO mentorship_eligibilty
FROM employees as emp
INNER JOIN dept_emp as de
ON (emp.emp_no=de.emp_no)
INNER JOIN titles as tit
ON (emp.emp_no=tit.emp_no)
WHERE de.to_date='1999-01-01'
AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31' )
ORDER BY emp_no;