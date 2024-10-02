with dim_products as (
    select
        sku,
        name,
        type,
        price,
        description
    from
        {{ ref('stg_products') }}
)

select * from dim_products