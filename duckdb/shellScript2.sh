#!/bin/bash

# Here we pass an argument to duckdb
duckdb -column tutorial.duckdb  <<EOF
   SELECT employee_id, first_name, last_name,
          round(date_diff('days', hire_date, current_date)/365.25,2) as YoS
   FROM employees;
EOF
