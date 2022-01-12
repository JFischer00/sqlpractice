select
    orderid,
    count(*) as lineitems
from
    orderdetails
group by
    orderid
order by
    lineitems desc
limit 10