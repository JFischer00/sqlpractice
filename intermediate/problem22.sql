select
    productid,
    productname,
    unitsinstock,
    reorderlevel
from
    products
where
    unitsinstock <= reorderlevel
order by
    productid