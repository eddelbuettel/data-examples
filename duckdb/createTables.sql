-- create tables
-- source:  http://www.sqltutorial.org/sql-sample-database/

CREATE TABLE regions (
    region_id INTEGER PRIMARY KEY  NOT NULL,
    region_name text NOT NULL
);
 
CREATE TABLE countries (
    country_id text ,
    country_name text NOT NULL,
    region_id INTEGER,
    PRIMARY KEY (country_id)
);
 
CREATE TABLE locations (
    location_id INTEGER PRIMARY KEY  NOT NULL,
    street_address text,
    postal_code text,
    city text NOT NULL,
    state_province text,
    country_id text NOT NULL
);
 
CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY  NOT NULL,
    department_name text NOT NULL,
    location_id INTEGER NOT NULL
);
 
CREATE TABLE jobs (
    job_id INTEGER PRIMARY KEY  NOT NULL,
    job_title text NOT NULL,
    min_salary double NOT NULL,
    max_salary double NOT NULL
);
 
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY  NOT NULL,
    first_name text,
    last_name text NOT NULL,
    email text NOT NULL,
    phone_number text,
    hire_date Date NOT NULL,
    job_id INTEGER NOT NULL,
    salary double NOT NULL,
    manager_id INTEGER,
    department_id INTEGER NOT NULL
);
 
CREATE TABLE dependents (
    dependent_id INTEGER PRIMARY KEY  NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    relationship text NOT NULL,
    employee_id INTEGER NOT NULL
);
