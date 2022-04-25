SELECT employees.emp_no, 
	employees.first_name, 
	employees.last_name, 
	titles.title,
	titles.from_date, 
	titles.to_date
INTO retirement_titles
FROM employees 
RIGHT JOIN titles  
ON employees.emp_no = titles.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no; 

Select * from retirement_titles

select DISTINCT retirement_titles.emp_no, 
	retirement_titles.first_name, 
	retirement_titles.last_name, 
	retirement_titles.title
INTO unique_titles
FROM retirement_titles
WHERE(to_date = '9999-01-01');

DROP TABLE unique_titles

SELECT COUNT(first_name)
FROM retirement_titles;

SELECT DISTINCT ON (retirement_titles)retirement_titles.emp_no,
	retirement_titles.first_name, 
	retirement_titles.last_name, 
	retirement_titles.title
FROM retirement_titles
ORDER BY emp_no,
ORDER BY title, 
ORDER BY to_date DESC;

--step 14 (exported to unique_titles.csv)
Select * from unique_titles 

--employees number by recent job title 
select DISTINCT retirement_titles.emp_no, 
	retirement_titles.first_name, 
	retirement_titles.last_name, 
	retirement_titles.title
	
Select * from unique_titles 

SELECT COUNT (retiring_titles.title), retiring_titles.title
FROM retiring_titles
INTO retiring_titlesexport
GROUP BY title
ORDER BY count DESC;
			  
			  
			  sort
GROUP BY unique_titles.emp_no,unique_titles.title;

--SELECT COUNT(unique_titles.title)
--Retirement_titles
--ORDER BY emp_no,
--ORDER BY title, 
--ORDER BY to_date DESC;

SELECT COUNT(title)
FROM unique_titles

--CREATE RETIRING TITLES TABLE TO HOLD # OF EMPLOYEES DATA THAT ARE ABOUT TO RETIRE W/TITLES
create table retiring_titles (
    emp_no INT,
    first_name VARCHAR,
    last_name VARCHAR,
	title VARCHAr
	);

SELECT * FROM retiring_titles


SELECT COUNT (retiring_titles.title), retiring_titles.title
INTO retire_titles
FROM retiring_titles
GROUP BY title
ORDER BY count DESC;

select * from retire_titles