SELECT DISTINCT ON (employees.emp_no) employees.emp_no,
   employees.first_name,
   employees.last_name,
   employees.birth_date,
   dept_emp.from_date,
   dept_emp.to_date,
   titles.title
INTO mentor_elig
FROM employees
inner JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
inner JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dept_emp.to_date = '9999-01-01') AND (employees.birth_date between '1965-01-01' AND '1965-12-31')
ORDER BY employees.emp_no ;
SELECT * FROM MENTOR_ELIG