#!/bin/bash

# instead of HERE document we can also pipe code into duckdb
echo "
   SELECT employee_id, first_name, last_name,
          round(date_diff('days', hire_date, current_date)/365.25,2) as YoS
   FROM employees;
" | duckdb -column tutorial.duckdb
