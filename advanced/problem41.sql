select
    orderid,
    orderdate,
    requireddate,
    shippeddate
from
    orders
where
    shippeddate >= requireddate
order by
    orderid