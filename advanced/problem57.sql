with temp as (
    select
        customerid,
        orderid as firstid,
        date_format(orderdate, '%Y-%m-%d') as firstdate,
        lead(orderid) over w as nextid,
        date_format(lead(orderdate) over w, '%Y-%m-%d') as nextdate,
        datediff(lead(orderdate) over w, orderdate) as orderdiff
    from
        orders
    window w as 
    (partition by customerid order by orderdate)
    order by
        customerid,
        orderdate
)
select
    customerid,
    firstid,
    firstdate,
    nextid,
    nextdate,
    orderdiff
from
    temp
where
    orderdiff <= 5
order by
    customerid,
    firstdate