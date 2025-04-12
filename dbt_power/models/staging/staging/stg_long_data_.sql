with 

source as (

    select * from {{ source('staging', 'long_data_') }}

),

renamed as (

    select
        state,
        region,
        latitude,
        longitude,
        PARSE_DATE('%d/%m/%Y', SUBSTR(date, 1, 10)) as date,
        usage

    from source

)

select * from renamed
