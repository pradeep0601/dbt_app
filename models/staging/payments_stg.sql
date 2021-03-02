with source as (
    select * from {{ ref("raw_payments") }}
),

renamed_payment as (
    select
        id as payment_id,
        order_id,
        payment_method,
        amount
    from source
)

select * from renamed_payment