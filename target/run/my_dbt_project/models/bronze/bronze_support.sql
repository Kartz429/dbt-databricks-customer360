
  
    
        create or replace table `workspace`.`production`.`bronze_support`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select *
from `workspace`.`customer360_bronze`.`support_tickets`
  