select
    e.employeeid,
    e.lastname,
    o.orderid,
    p.productname,
    d.quantity
from
    orders o
join
    orderdetails d on o.orderid = d.orderid
join
    employees e on o.employeeid = e.employeeid
join
    products p on d.productid = p.productid
order by
    o.orderid,
    p.productid