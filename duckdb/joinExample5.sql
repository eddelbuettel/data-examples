-- !preview conn=DBI::dbConnect(duckdb::duckdb(), "tutorial.duckdb")

-- more non-sensical example joining on first name (which make little
-- sense) to demonstrate the mechanics of 'full outer' joins; it shows
-- a) matches, b) left-hand side unmatched, c) right-hand side unmatched
SELECT * FROM employees e
FULL OUTER JOIN dependents d ON e.first_name = d.first_name;
