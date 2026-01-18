{% set inc_flag = 1 %}
{% set last_load = 3 %}
{% set col_list = ["customer_id","first_name","last_name"] %}


select 
    {% for i in col_list %}
        {{ i }}{% if not loop.last %},{% endif %}
    {% endfor %}
from {{ ref ("customer") }}
{% if inc_flag == 1 %}
    where children >= {{ last_load }}
{% endif %}