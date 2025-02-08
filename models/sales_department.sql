{{ config(
    materialized='table',
    database='TGT_DB',
    schema='TGT_SCHEMA'
) }}

select
employee_id,
first_name,
last_name,
department_name
from employees inner join departments
where employees.department_id=departments.department_id
and department_name ='Sales'