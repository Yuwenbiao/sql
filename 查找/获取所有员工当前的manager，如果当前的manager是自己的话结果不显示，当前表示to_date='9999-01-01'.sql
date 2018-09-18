SELECT de.emp_no,dm.emp_no AS manager_no
FROM dept_manager AS dm,dept_emp AS de
WHERE de.emp_no <> dm.emp_no
AND de.dept_no = dm.dept_no
AND dm.to_date='9999-01-01';