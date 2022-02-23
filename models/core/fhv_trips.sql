{{ config(materialized='table') }}


select 
    PUlocationID,
    DOlocationID,
    pickup_datetime,
    dropoff_datetime,
from {{ ref('stg_fhv_tripdata') }}