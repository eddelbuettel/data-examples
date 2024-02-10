-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

SELECT e.department_id, d.department_name,
       MIN(e.salary) as min_salary,
       MAX(e.salary) as max_salary,
       ROUND(AVG(salary), 2) as average_salary
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
GROUP BY e.department_id, d.department_name
ORDER BY average_salary DESC;
