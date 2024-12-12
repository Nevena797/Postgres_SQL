SELECT
    first_name
    , last_name
    , to_char(born, 'YYYY') as year
FROM authors;