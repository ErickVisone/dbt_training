{%- set apples = ["Gala","Fugi","Red"] -%}

{% for i in apples %}
        {% if i !="Gala" %}
                {{ i }}
        {% else %}
                Eu aprendi Jinja
        {%endif%}
{% endfor %}