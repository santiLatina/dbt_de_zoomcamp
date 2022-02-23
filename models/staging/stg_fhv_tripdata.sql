{{ config(materialized='view') }}

with tripdata as 
(
  select *
  from {{ source('staging','fhv_tripdata') }}
  where PUlocationID is not null 
)

select * from tripdata


-- dbt build --m <model.sql> --var 'is_test_run: false'
--{% if var('is_test_run', default=false) %}
--  limit 100
--{% endif %}