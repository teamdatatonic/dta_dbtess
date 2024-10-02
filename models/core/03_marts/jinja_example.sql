{% set columns = ['subtotal', 'tax_paid', 'order_total'] -%}
with jinja_example  as (
    select
    {% for c in columns %}
        sum({{c}}) as total_{{c}} 
        {%- if not loop.last -%}
            ,
        {%- endif %}
    {%- endfor %}
    from
        {{ ref('fact_orders') }}    
)

select * from jinja_example