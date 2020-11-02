{% macro test_expect_column_min_to_be_between(model, column_name,
                                                    minimum,
                                                    maximum,
                                                    partition_column=None,
                                                    partition_filter=None
                                                    ) %}
{% set expression %}
min({{ column_name }}) 
{% endset %}
{{ dbt_expectations._test_expression_between(model, 
                                                expression=expression,
                                                minimum=minimum, 
                                                maximum=maximum, 
                                                partition_column=partition_column, 
                                                partition_filter=partition_filter
                                                ) }}

{% endmacro %}