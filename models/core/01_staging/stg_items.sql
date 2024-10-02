with raw_items as (
    select 
        id as item_id,
        order_id,
        sku
    from
        dt-mirko-sandbox-dev.dbt_essentials.raw_items
)

select * from raw_items