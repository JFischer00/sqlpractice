select
    shipcountry,
    avg(freight) as avgfreight
from
    orders
group by
    shipcountry
order by
    avgfreight desc
limit 3