select
    c.customerid,
    c.companyname,
    sum(d.quantity * d.unitprice) as ordertotal
from
    orderdetails d
left join
    orders o on o.orderid = d.orderid
left join
    customers c on o.customerid = c.customerid
where
    year(o.orderdate) = 2016
group by
    c.customerid, c.companyname
having
    ordertotal >= 15000
order by
    ordertotal desc