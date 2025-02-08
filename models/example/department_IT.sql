{{ config(materialized='table') }}

select
employee_id,
first_name,
last_name,
departments.department_id,
department_name
from "employees" inner join "departments"
where employees.department_id=departments.department_id
and department_name ='IT'

