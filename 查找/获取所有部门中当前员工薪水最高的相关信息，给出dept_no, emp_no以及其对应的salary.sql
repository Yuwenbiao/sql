SELECT d.dept_no, s.emp_no, MAX(s.salary) AS salary
FROM salaries AS s INNER JOIN dept_emp As d
ON d.emp_no = s.emp_no
WHERE d.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
GROUP BY d.dept_no