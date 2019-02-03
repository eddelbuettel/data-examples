-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT e.department_id, department_name,
       e.job_id, job_title, COUNT(employee_id)
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
INNER JOIN jobs j
ON j.job_id = e.job_id
GROUP BY e.department_id, e.job_id;
