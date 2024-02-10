#!/bin/bash

# we can also pipe sql code from a file directly into duckdb
# this allows for the file to change, or disappear, or ...
cat basicExample3.sql | duckdb -column tutorial.duckdb
