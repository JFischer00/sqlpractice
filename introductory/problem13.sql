select
    orderid,
    productid,
    unitprice,
    quantity,
    format(unitprice * quantity, 2) as totalprice
from
    orderdetails
order by
    orderid,
    productid