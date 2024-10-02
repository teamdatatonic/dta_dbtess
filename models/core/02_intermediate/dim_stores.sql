with dim_stores as (
    select
        store_id,
        name,
        opened_at,
        tax_rate
    from
        {{ ref('stg_stores') }}
)

select * from dim_stores