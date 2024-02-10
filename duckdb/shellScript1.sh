#!/bin/bash

# A so-called HERE document uses the <<HERE marker, often EOF which
# stands for 'end of file' or end of input
#
# It allows us to embed instructions passed to another program, here
# duckdb.
#
# Here we pass no other arguments to duckdb besides the actual table
duckdb tutorial.duckdb <<EOF
   SELECT employee_id, first_name, last_name,
          round(date_diff('days', hire_date, current_date)/365.25,2) as YoS
   FROM employees;
EOF
