{% set columns = ['subtotal', 'tax_paid', 'order_total'] -%}
with jinja_example  as (
    select
        {{ sum_columns(columns) }}
    from
        {{ ref('fact_orders') }}    
)

select * from jinja_example