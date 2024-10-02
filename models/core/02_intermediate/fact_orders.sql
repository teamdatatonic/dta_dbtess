with fact_table as (
    select 
        o.order_id,
        o.customer_id,
        o.store_id,
        i.item_id,
        o.ordered_at,
        o.subtotal,
        o.tax_paid,
        o.order_total
    from
        {{ ref('stg_orders') }} as o
        left join {{ ref('stg_items') }} as i using (order_id)
)

select * from fact_table