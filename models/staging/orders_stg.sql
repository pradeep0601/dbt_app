with source as (
    select * from {{ ref('raw_orders') }}
),

renamed_order as (
    select 
        id as order_id,
        user_id,
        order_date,
        status as order_status
    from source
)

select * from renamed_order