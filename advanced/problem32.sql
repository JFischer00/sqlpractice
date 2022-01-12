select
    c.customerid,
    c.companyname,
    o.orderid,
    sum(d.quantity * d.unitprice) as ordertotal
from
    orders o
join
    customers c on o.customerid = c.customerid
join
    orderdetails d on o.orderid = d.orderid
where
    year(o.orderdate) = 2016
group by
    c.customerid, c.companyname, o.orderid
having
    ordertotal >= 10000
order by
    ordertotal desc