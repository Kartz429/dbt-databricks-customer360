select *
from {{ source('customer360_bronze', 'support_tickets') }}