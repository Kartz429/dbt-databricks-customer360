select *
from {{ source('customer360_bronze', 'customers') }}