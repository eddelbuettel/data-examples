-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

SELECT e.department_id, d.department_name,
       e.job_id, j.job_title, COUNT(employee_id)
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
INNER JOIN jobs j
ON j.job_id = e.job_id
GROUP BY e.department_id, d.department_name, j.job_title, e.job_id;
