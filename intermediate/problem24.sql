select
    customerid,
    companyname,
    region
from
    customers
order by
    region is null,
    region,
    customerid