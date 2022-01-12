select
    c.customerid as c_customerid,
    o.customerid as o_customerid
from
    customers c
left join
    orders o on c.customerid = o.customerid
where
    o.customerid is null