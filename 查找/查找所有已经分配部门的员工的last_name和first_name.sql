select employees.last_name, first_name, dept_emp.dept_no
from employees inner join dept_emp on employees.emp_no=dept_emp.emp_no
