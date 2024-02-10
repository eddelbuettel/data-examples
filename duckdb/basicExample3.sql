-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

SELECT employee_id, first_name, last_name,
       round(date_diff('days', hire_date, current_date)/365.25,1) as YoS
FROM employees;
