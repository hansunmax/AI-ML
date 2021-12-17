{% macro generate_schema_name(macro_sample, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if macro_sample is none -%}

        {{ default_schema }}

    {%- else -%}

        {{ default_schema }}_{{ macro_sample | trim }}

    {%- endif -%}

{%- endmacro %}