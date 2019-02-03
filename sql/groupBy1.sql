-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT department_id, COUNT(employee_id) headcount
FROM employees
GROUP BY department_id;
