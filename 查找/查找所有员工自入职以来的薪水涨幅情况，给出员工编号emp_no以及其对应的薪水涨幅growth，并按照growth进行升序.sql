SELECT sCurrent.emp_no, (sCurrent.salary-sStart.salary) AS growth
FROM (SELECT s.emp_no, s.salary FROM employees e, salaries s WHERE e.emp_no = s.emp_no AND s.to_date = '9999-01-01') AS sCurrent,
(SELECT s.emp_no, s.salary FROM employees e, salaries s WHERE e.emp_no = s.emp_no AND s.from_date = e.hire_date) AS sStart
WHERE sCurrent.emp_no = sStart.emp_no
ORDER BY growth