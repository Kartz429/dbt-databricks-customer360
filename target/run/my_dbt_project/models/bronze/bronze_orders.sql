
  
    
        create or replace table `workspace`.`production`.`bronze_orders`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select *
from `workspace`.`customer360_bronze`.`orders`
  