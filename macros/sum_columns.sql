{% macro sum_columns(columns) -%}
    {% for c in columns %}  
        sum({{c}}) as total_{{c}} 
        {%- if not loop.last -%}
            ,
        {%- endif %}
    {%- endfor %}
{% endmacro%}