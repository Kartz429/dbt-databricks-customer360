with ranked_customers as (

    select *

        , row_number() over (

            partition by customer_id

            order by updated_at desc

        ) as rn

    from `workspace`.`dbt_demo`.`silver_customers`

)

select *

from ranked_customers

where rn = 1