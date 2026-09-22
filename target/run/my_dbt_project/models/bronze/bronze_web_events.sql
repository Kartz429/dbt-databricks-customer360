
  
    
        create or replace table `workspace`.`production`.`bronze_web_events`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select *
from `workspace`.`customer360_bronze`.`web_events`
  