
  
    
        create or replace table `workspace`.`production`.`bronze_customers`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select *
from `workspace`.`customer360_bronze`.`customers`
  