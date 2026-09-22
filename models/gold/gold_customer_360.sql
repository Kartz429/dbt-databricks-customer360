with customers as (

    select *
    from {{ ref('silver_customers') }}

),

orders as (

    select

        customer_id,

        count(*) as total_orders,

        sum(order_amount) as total_spend,

        max(order_date) as last_order_date

    from {{ ref('silver_orders') }}

    group by customer_id

),

marketing as (

    select

        customer_id,

        count(*) as total_marketing_events

    from {{ ref('silver_marketing') }}

    group by customer_id

),

support as (

    select

        customer_id,

        count(*) as total_support_tickets

    from {{ ref('silver_support') }}

    group by customer_id

),

web_events as (

    select

        customer_id,

        count(*) as total_web_events

    from {{ ref('silver_web_events') }}

    group by customer_id

)

select

    c.customer_id,

    c.first_name,

    c.last_name,

    c.customer_name,

    c.email,

    c.phone,

    c.city,

    c.country,

    c.signup_date,

    coalesce(o.total_orders, 0) as total_orders,

    coalesce(o.total_spend, 0) as total_spend,

    o.last_order_date,

    coalesce(m.total_marketing_events, 0) as total_marketing_events,

    coalesce(s.total_support_tickets, 0) as total_support_tickets,

    coalesce(w.total_web_events, 0) as total_web_events

from customers c

left join orders o
    on c.customer_id = o.customer_id

left join marketing m
    on c.customer_id = m.customer_id

left join support s
    on c.customer_id = s.customer_id

left join web_events w
    on c.customer_id = w.customer_id