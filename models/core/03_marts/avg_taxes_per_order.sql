with orders_taxes as (
    select
        customer_id,
        sum(tax_paid) as total_taxes,
        sum(order_total) as total_orders
    from
        {{ ref('fact_orders') }}
    group by customer_id
),

avg_taxes_per_orders as (
    select
        c.name,
        -- ADD safe_divide macro here
        round((ot.total_taxes / ot.total_orders) * 100, 2) as avg_taxes,
    from
        orders_taxes as ot 
        left join {{ ref('dim_customers') }} as c using (customer_id)
)

select * from avg_taxes_per_orders