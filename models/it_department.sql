{{ config(materialized='table') }}

SELECT
    employee_id,
    first_name,
    last_name,
    department_name
FROM {{ source('hr', 'employees') }}
JOIN {{ source('hr', 'departments') }}
ON employees.department_id = departments.department_id
WHERE department_name = 'IT'