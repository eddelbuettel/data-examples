-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT basket_name, fruit_name
FROM fruits f
FULL OUTER JOIN baskets b ON b.basket_id = f.basket_id;
-- right and full outer join not currently supported in SQLite :-/
