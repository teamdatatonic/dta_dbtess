with dim_supplies as (
    select
        supply_id,
        name,
        cost,
        perishable,
        sku
    from
        {{ ref('stg_supplies') }}
)

select * from dim_supplies