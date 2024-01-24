with teams as (
    select * from {{source("gokulDB","teams")}}
),

final as(
    select * from teams
)

select * from final 
