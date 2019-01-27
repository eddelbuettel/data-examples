#!/bin/bash

# we can also pipe sql code from a file directly into sqlite
# this allows for the file to change, or disappear, or ...
cat basicExample3.sql | sqlite3 -header -column tutorial.sqlite  
