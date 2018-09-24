SELECT e.last_name, e.first_name, dp.dept_name FROM employees AS e
LEFT JOIN dept_emp AS d ON e.emp_no = d.emp_no
LEFT JOIN departments AS dp ON d.dept_no = dp.dept_no;