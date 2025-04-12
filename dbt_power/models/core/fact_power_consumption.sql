{{
    config(
        materialized='table'
    )
}}

with power_consumption_long as (
    select *
    from {{ ref('stg_long_data_') }}
)

select *
from 
    power_consumption_long
