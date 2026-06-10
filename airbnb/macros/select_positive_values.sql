{% macro select_positive_values(model, column_name) %}
    select *
    from {{ ref(model) }} --phải thêm ref thì mới chạy được. trong course chắc phiên bản cũ nên zoltan k cần ref
    where {{ column_name }} > 0
{% endmacro %}