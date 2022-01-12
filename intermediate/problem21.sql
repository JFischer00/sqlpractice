select
    country,
    city,
    count(*) as customer_count
from
    customers
group by
    city,
    country
order by
    customer_count desc