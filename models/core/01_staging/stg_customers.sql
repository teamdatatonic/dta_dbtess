with raw_customers as (
    select 
        id as customer_id,
        name
    from
        dt-mirko-sandbox-dev.dbt_essentials.raw_customers
)

select * from raw_customers