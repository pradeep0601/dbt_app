with customers as (

    select * from {{ ref('customers_stg') }}

),

final as (

    select
        customers.customer_id,
        customers.first_name,
        customers.last_name,
        customers.email
    from customers

)

select * from final