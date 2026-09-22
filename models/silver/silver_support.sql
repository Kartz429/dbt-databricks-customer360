select

    ticket_id,

    customer_id,

    status,

    priority,

    cast(created_at as timestamp) as created_at,

    cast(closed_at as timestamp) as closed_at,

    cast(updated_at as timestamp) as updated_at

from {{ ref('bronze_support') }}

where ticket_id is not null