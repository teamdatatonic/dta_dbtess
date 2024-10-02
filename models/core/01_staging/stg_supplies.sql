with raw_supplies as (
    select
        id as supply_id,
        name,
        cost,
        perishable,
        sku
    from
        dt-mirko-sandbox-dev.dbt_essentials.raw_supplies
)

select * from raw_supplies