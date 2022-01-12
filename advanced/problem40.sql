select
    d.orderid,
    productid,
    unitprice,
    quantity,
    discount
from
    orderdetails d
join (
    select
        distinct orderid
    from
        orderdetails
    where
        quantity >= 60
    group by
        orderid,
        quantity
    having
        count(*) > 1
) p on p.orderid = d.orderid
order by
    orderid,
    productid