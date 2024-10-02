with raw_products as (
    select
        sku,
        name,
        type,
        price,
        description
    from
        {{ source('jaffle_shop', 'raw_products') }}
)

select * from raw_products