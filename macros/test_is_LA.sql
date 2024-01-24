{% test is_LA_team(model, column_name) %}

with validation as (

    select
        {{ column_name }} as city

    from {{ model }}

),

validation_errors as (

    select
        city

    from validation
    where (city ) = 'Los Angeles'

)

-- select count(*)
select *
from validation_errors

{% endtest %}