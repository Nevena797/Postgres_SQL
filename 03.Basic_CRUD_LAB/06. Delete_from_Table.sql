DELETE
FROM employees
WHERE department_id = 2 OR department_id=1;

SELECT
    id
    , first_name
    , last_name
    , job_title
    , department_id
    , salary
FROM employees;