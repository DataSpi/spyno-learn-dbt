{% test minimum_row_count(model, min_rows) %}
    select 
        count(*) as row_count
    from {{ model }}
    having count(*) < {{ min_rows }} 
    -- test minimum row -> thì phải trả về bảng nếu row_count < min_rows 
    --(nguyên tắc của test: results = 0 dòng là pass, nếu > 0 row là fail)
{% endtest %}
