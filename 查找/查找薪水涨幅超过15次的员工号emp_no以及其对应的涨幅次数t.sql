select a.* from(
select emp_no,count(*) as t
from salaries
group by emp_no) as a
where t>15