#!/bin/bash

# instead of HERE document we can also pipe code into sqlite3
echo "
   SELECT employee_id, first_name, last_name,
          round((julianday('now') -
                 julianday(hire_date))/365.25,1) as YoS
   FROM employees;
" | sqlite3 -header -column tutorial.sqlite  
