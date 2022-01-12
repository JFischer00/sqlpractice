select
    orderid,
    date_format(orderdate, '%Y-%m-%d') as date_new,
    s.companyname as shipper
from
    orders o
left join
    shippers s on s.shipperid = o.shipvia
where
    orderid < 10270