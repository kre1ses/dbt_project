{% macro amount_bucket(amount) %}
    case
        when {{ amount }} < 20 then 'LOW'
        when {{ amount }} < 100 then 'MEDIUM'
        when {{ amount }} < 500 then 'HIGH'
        else 'VERY_HIGH'
    end
{% endmacro %}
