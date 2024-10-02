with dim_item as (
    select 
        order_id,
        count(item_id) as total_num_items
    from
        {{ ref('stg_items') }}
    group by order_id
)

select * from dim_item