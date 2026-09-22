select

    event_id,

    customer_id,

    campaign_name,

    event_type,

    cast(event_timestamp as timestamp) as event_timestamp,

    cast(created_at as timestamp) as created_at,

    cast(updated_at as timestamp) as updated_at

from `workspace`.`production`.`bronze_marketing`

where event_id is not null