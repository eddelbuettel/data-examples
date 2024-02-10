-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT e.department_id, department_name,
       MIN(salary) min_salary,
       MAX(salary) max_salary,
       ROUND(AVG(salary), 2) average_salary
FROM employees e
INNER JOIN departments d
ON d.department_id = e.department_id
GROUP BY e.department_id
ORDER BY average_salary DESC;
