with top10_customers as (
    select
        c.name as customer_name,
        sum(i.total_num_items) as total_purchased,
    from
        {{ ref('fact_orders') }} as o
        left join {{ ref('dim_items') }} as i using (order_id)
        left join {{ ref('dim_customers') }} as c using (customer_id)
    group by c.name
    order by total_purchased
    limit 10
)

select * from top10_customers