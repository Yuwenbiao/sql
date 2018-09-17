select employees.emp_no,salaries.salary
from employees,salaries
where employees.emp_no=salaries.emp_no
and employees.hire_date=salaries.from_date
order by employees.emp_no desc;