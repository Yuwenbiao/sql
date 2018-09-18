SELECT dept_manager.dept_no,dept_manager.emp_no,salaries.salary
from salaries,dept_manager
where dept_manager.to_date = '9999-01-01'
and salaries.to_date = '9999-01-01'
and dept_manager.emp_no = salaries.emp_no;