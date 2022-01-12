select
    customerid
from
    customers
where
    customerid not in (select
        distinct customerid
    from
        orders
    where
        employeeid = 4
    )