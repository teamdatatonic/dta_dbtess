with dim_customers as (
    select
        customer_id,
        name
    from
        {{ ref('stg_customers') }}
)

select * from dim_customers