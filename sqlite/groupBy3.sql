-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT e.department_id, department_name,
       COUNT(employee_id) headcount
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
GROUP BY e.department_id
HAVING headcount > 5
ORDER BY headcount DESC;
