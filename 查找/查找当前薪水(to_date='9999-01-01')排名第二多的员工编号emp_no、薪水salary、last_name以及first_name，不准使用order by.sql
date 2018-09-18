select e.emp_no, max(s.salary) AS salary, e.last_name, e.first_name
from employees AS e inner join salaries AS s on e.emp_no=s.emp_no
where to_date='9999-01-01'and salary not in
(select max (salary) from salaries where to_date='9999-01-01')