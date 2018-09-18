select title,avg(salary) as avg
from titles a
inner join salaries b
on a.emp_no=b.emp_no and a.to_date = '9999-01-01' AND b.to_date = '9999-01-01'
group by a.title