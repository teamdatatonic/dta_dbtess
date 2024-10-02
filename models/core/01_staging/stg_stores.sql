with raw_stores as (
    select
        id as store_id,
        name,
        opened_at,
        tax_rate
    from
        dt-mirko-sandbox-dev.dbt_essentials.raw_stores
)

select * from raw_stores