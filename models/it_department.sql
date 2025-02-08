{{ config(materialized='table') }}

select
    employee_id,
    first_name,
    last_name,
    departments.department_id,
    department_name
from "mydb1"."myschema1"."employees"
inner join "mydb1"."myschema1"."departments"
on employees.department_id = departments.department_id
where department_name = 'IT'