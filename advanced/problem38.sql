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