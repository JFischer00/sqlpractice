select
    employeeid,
    orderid,
    orderdate
from
    orders
where
    date(orderdate) = last_day(orderdate)
order by
    employeeid,
    orderid