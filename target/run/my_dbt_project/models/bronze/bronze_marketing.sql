
  
    
        create or replace table `workspace`.`production`.`bronze_marketing`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select *
from `workspace`.`customer360_bronze`.`marketing_events`
  