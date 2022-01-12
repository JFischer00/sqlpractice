select
    c.customerid,
    c.companyname,
    sum(d.quantity * d.unitprice) as ordertotalnodisc,
    sum(d.quantity * (d.unitprice * (1.0-d.discount))) as ordertotaldisc
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
    ordertotaldisc >= 15000
order by
    ordertotaldisc desc