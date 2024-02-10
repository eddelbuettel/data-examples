-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

SELECT * FROM employees e
FULL OUTER JOIN dependents d ON e.last_name = d.last_name;
