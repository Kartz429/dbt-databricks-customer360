
  
    
        create or replace table `workspace`.`production`.`silver_customers`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select

    customer_id,

    trim(first_name) as first_name,

    trim(last_name) as last_name,

    concat(trim(first_name), ' ', trim(last_name)) as customer_name,

    lower(trim(email)) as email,

    phone,

    city,

    country,

    cast(signup_date as date) as signup_date,

    cast(created_at as timestamp) as created_at,

    cast(updated_at as timestamp) as updated_at

from `workspace`.`production`.`bronze_customers`

where customer_id is not null
  