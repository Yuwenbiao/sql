
SELECT id
FROM tableName
WHERE create_time  < subdate(now(), interval 24 hour) and create_time  >  subdate(now(), interval 36 hour)