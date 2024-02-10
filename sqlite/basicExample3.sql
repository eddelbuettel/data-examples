-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT employee_id, first_name, last_name,
       round((julianday('now') -
              julianday(hire_date))/365.25) as YoS
FROM employees;
