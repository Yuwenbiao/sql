-- 根据状态和有效期排序，其中状态定义为：状态为1时为1，不为1时为2
SELECT * from table_name order by (case state when 1 then 1  else 2 end) asc,expired_time asc
