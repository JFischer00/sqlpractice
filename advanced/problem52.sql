select
    country
from
    suppliers
union
select
    country
from
    customers
order by
    country