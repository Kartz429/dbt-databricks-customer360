select *
from {{ source('customer360_bronze', 'marketing_events') }}