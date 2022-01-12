select
    orders.shipcountry,
    orders.customerid,
    orders.orderid,
    date_format(firstorderdate, '%Y-%m-%d') as firstorder
from
    orders
join
    (
        select
            shipcountry,
            min(orderdate) as firstorderdate
        from
            orders
        group by
            shipcountry
    ) temp on orders.shipcountry = temp.shipcountry and orders.orderdate = temp.firstorderdate
order by
    shipcountry