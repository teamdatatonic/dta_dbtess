with raw_products as (
    select
        sku,
        name,
        type,
        price,
        description
    from
        dt-mirko-sandbox-dev.dbt_essentials.raw_products
)

select * from raw_products