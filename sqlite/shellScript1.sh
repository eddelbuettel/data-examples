#!/bin/bash

# A so-called HERE document uses the <<HERE marker, often EOF which
# stands for 'end of file' or end of input
#
# It allows us to embed instructions passed to another program, here
# sqlite3.
#
# Here we pass no other arguments to SQLite besides the actual table
sqlite3 tutorial.sqlite  <<EOF
   SELECT employee_id, first_name, last_name,
          round((julianday('now') -
                 julianday(hire_date))/365.25) as YoS
   FROM employees;
EOF
