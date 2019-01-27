#!/bin/bash

# Here we pass two more arguments to sqlite
sqlite3 -header -column tutorial.sqlite  <<EOF
   SELECT employee_id, first_name, last_name,
          round((julianday('now') -
                 julianday(hire_date))/365.25,1) as YoS
   FROM employees;
EOF
