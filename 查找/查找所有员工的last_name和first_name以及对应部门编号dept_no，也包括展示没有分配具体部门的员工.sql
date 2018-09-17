select a.last_name,a.first_name,b.dept_no
from employees a
left join dept_emp b
on a.emp_no=b.emp_no