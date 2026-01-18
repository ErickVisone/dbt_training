select
    *
from {{ source('raw', 'purchase') }}