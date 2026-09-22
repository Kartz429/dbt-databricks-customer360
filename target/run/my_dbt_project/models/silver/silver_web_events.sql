
  
    
        create or replace table `workspace`.`production`.`silver_web_events`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select

    event_id,

    customer_id,

    page_name,

    cast(event_timestamp as timestamp) as event_timestamp,

    cast(created_at as timestamp) as created_at,

    cast(updated_at as timestamp) as updated_at

from `workspace`.`production`.`bronze_web_events`

where event_id is not null
  