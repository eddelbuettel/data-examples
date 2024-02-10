-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

SELECT d.department_id, d.department_name,
       COUNT(e.employee_id) as headcount
FROM employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
ORDER BY headcount DESC;
