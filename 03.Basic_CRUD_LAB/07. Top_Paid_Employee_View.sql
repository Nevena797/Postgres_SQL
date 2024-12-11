CREATE VIEW top_paid_employee_view
AS
SELECT
    id
    , first_name
    , last_name
    , job_title
    , department_id
    , salary
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT
    id
    , first_name
    , last_name
    , job_title
    , department_id
    , salary
FROM top_paid_employee_view;