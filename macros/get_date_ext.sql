{% macro get_date_ext(column) %}
    CAST({{ column }} AS DATE) as date_s,
    EXTRACT(MONTH FROM CAST({{ column }} AS DATE)) AS month_ext,
    EXTRACT(DAY FROM CAST({{ column }} AS DATE)) AS day_ext,
    EXTRACT(YEAR FROM CAST({{ column }} AS DATE)) AS year_ext
   
   
{% endmacro %}