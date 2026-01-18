select 
  *
from {{ ref('purchase')}}
where 1=1
and price >= 499