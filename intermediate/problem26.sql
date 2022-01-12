select
    shipcountry,
    avg(freight) as avgfreight
from
    orders
where
    year(orderdate) = 2015
group by
    shipcountry
order by
    avgfreight desc
limit 3