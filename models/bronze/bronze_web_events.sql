select *
from {{ source('customer360_bronze', 'web_events') }}