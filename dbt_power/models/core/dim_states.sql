{{ config(materialized='table') }}

with states_india as (
    select *
    from {{ ref('stg_long_data_') }}
)

select distinct
    state,
    region,
    latitude,
    longitude,
    -- Create a hashed unique ID
    TO_HEX(SHA256(
        CONCAT(
            state, '|',
            region, '|',
            CAST(latitude AS STRING), '|',
            CAST(longitude AS STRING)
        )
    )) as zoneid

from 
    states_india