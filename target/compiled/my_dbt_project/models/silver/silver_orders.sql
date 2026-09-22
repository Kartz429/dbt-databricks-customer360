select

    order_id,

    customer_id,

    product_id,

    quantity,

    unit_price,

    

    quantity * unit_price

 as order_amount,

    order_status,

    payment_method,

    cast(order_date as date) as order_date,

    cast(created_at as timestamp) as created_at,

    cast(updated_at as timestamp) as updated_at

from `workspace`.`production`.`bronze_orders`

where order_id is not null