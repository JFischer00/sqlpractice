with forder as (
    select
        customerid,
        orderid,
        orderdate
    from
        orders
    order by
        customerid,
        orderdate
),
norder as (
    select
        customerid,
        orderid,
        orderdate
    from
        orders
    order by
        customerid,
        orderdate
)
select
    forder.customerid,
    forder.orderid as firstid,
    date_format(forder.orderdate, '%Y-%m-%d') as firstdate,
    norder.orderid as nextid,
    date_format(norder.orderdate, '%Y-%m-%d') as nextdate,
    datediff(norder.orderdate, forder.orderdate)
from
    forder
join
    norder on
    forder.customerid = norder.customerid and
    forder.orderid < norder.orderid and
    datediff(norder.orderdate, forder.orderdate) between 0 and 5
order by
    forder.customerid,
    forder.orderdate