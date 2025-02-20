CREATE OR REPLACE VIEW view_initials
AS SELECT
       SUBSTRING(e.first_name,1, 2) AS initial
        , e.last_name
FROM employees AS e
ORDER BY last_name;