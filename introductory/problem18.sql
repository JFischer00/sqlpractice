select
    productid,
    productname,
    s.companyname as supplier
from
    products p
left join
    suppliers s on p.supplierid = s.supplierid
