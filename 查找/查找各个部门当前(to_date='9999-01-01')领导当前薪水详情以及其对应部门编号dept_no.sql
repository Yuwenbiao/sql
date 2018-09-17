select salaries.emp_no,salaries.salary,salaries.from_date,salaries.to_date,dept_manager.dept_no
from salaries inner join dept_manager
on dept_manager.emp_no = salaries.emp_no
and dept_manager.to_date = '9999-01-01'
and salaries.to_date = '9999-01-01';