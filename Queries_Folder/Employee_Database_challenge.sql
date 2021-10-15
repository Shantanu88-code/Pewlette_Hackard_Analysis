-- Deliverable 1:
-- The Number of Retiring Employees by Title

-- Create a table retirement titles. (Table 1)

Select employees.emp_no,
employees.first_name,
employees.last_name,
titles.title,
titles.from_date,
titles.to_date

INTO retirement_titles

From employees
Inner Join titles
ON employees.emp_no = titles.emp_no

Where (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY employees.emp_no;

-- Use Dictinct On with Orderby to remove duplicate rows (Table 2)
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
From retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire. (Table 3)
Select COUNT (ut.emp_no), 
ut.title
INTO retiring_titles
FROM unique_titles as ut
Group By ut.title
Order By COUNT(ut.emp_no) DESC;

-- Deliverable 2:
-- Create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program

-- Use Distinct on
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
t.title
	
INTO mentorship_eligibility
FROM employees as e

INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)

INNER JOIN titles as t
ON (e.emp_no = t.emp_no)

WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')

ORDER BY emp_no;