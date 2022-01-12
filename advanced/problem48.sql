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
    case
        when totalsales between 0 and 999.99 then 'Low'
        when totalsales between 1000 and 4999.99 then 'Medium'
        when totalsales between 5000 and 9999.99 then 'High'
        when totalsales >= 10000 then 'Very High'
    end as customergroup
from
    orders2016
order by
    customerid