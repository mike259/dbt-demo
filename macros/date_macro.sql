{% macro format_date(date_column) %}
    TO_CHAR({{ date_column }}, 'YYYY-MM-DD')
{% endmacro %}