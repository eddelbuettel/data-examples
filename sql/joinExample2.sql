-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT c.country_name, c.country_id,
       l.street_address, l.city
FROM countries c
LEFT JOIN locations l ON l.country_id = c.country_id
WHERE c.country_id IN ('US', 'UK', 'CN');
