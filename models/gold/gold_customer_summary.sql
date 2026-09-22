select

    c.customer_id,

    c.customer_name,

    c.email,

    c.city,

    c.country,

    count(o.order_id) as total_orders,

    coalesce(sum(o.order_amount),0) as total_revenue,

    max(o.order_date) as last_order_date

from {{ ref('silver_customers') }} c

left join {{ ref('silver_orders') }} o
    on c.customer_id = o.customer_id

group by

    c.customer_id,
    c.customer_name,
    c.email,
    c.city,
    c.country