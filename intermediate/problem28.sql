select
    shipcountry,
    avg(freight) as avgfreight
from
    orders
where
    orderdate > (select
        max(orderdate) - interval 12 month
        from orders)
group by
    shipcountry
order by
    avgfreight desc
limit 3