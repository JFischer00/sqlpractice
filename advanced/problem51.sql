with orders2016 as (
    select
        c.customerid,
        c.companyname,
        sum(d.quantity * d.unitprice) as totalsales
    from
        customers c
    join
        orders o on o.customerid = c.customerid
    join
        orderdetails d on d.orderid = o.orderid
    where
        year(orderdate) = 2016
    group by
        c.customerid,
        c.companyname
)

select
    customerid,
    companyname,
    totalsales,
    customergroupname
from
    orders2016
join
    CustomerGroupThresholds on totalsales between rangebottom and rangetop
order by
    customerid