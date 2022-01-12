select
    orderid,
    productid,
    unitprice,
    quantity,
    discount
from
    orderdetails
where
    orderid in (

select
    orderid
from
    orderdetails
where
    quantity >= 60
group by
    quantity, orderid
having
    count(orderid) > 1

    )