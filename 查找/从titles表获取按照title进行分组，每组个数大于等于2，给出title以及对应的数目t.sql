SELECT title,COUNT(title) AS t
FROM titles
GROUP BY title
HAVING t > 1;