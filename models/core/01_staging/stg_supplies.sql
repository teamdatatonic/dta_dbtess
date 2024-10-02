with raw_supplies as (
    select
        id as supply_id,
        name,
        cost,
        perishable,
        sku
    from
        {{ source('jaffle_shop', 'raw_supplies') }}
)

select * from raw_supplies