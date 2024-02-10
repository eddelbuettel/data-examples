-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

SELECT e.department_id, d.department_name,
       COUNT(e.employee_id) headcount
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
GROUP BY e.department_id, d.department_name
HAVING headcount > 5
ORDER BY headcount DESC;
