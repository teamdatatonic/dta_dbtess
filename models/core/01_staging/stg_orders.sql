with raw_orders as (
    select
        id as order_id,
        customer as customer_id,
        ordered_at,
        store_id,
        subtotal,
        tax_paid,
        order_total
    from
        {{ source('jaffle_shop', 'raw_orders') }}
)

select * from raw_orders