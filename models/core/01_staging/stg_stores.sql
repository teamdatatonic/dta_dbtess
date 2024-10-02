with raw_stores as (
    select
        id as store_id,
        name,
        opened_at,
        tax_rate
    from
        {{ source('jaffle_shop', 'raw_stores') }}
)

select * from raw_stores