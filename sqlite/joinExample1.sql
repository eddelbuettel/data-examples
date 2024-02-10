-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT first_name, last_name,
       d.department_id, department_name
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
WHERE e.department_id IN (1 , 2, 3);
