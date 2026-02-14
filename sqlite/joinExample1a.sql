-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT first_name, last_name,
       d.department_id, department_name
FROM employees e, departments d
WHERE d.department_id = e.department_id
  AND e.department_id IN (1 , 2, 3);
