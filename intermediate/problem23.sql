select
    productid,
    productname,
    unitsinstock,
    unitsonorder,
    reorderlevel,
    discontinued
from
    products
where
    (unitsinstock + unitsonorder) <= reorderlevel and
    not discontinued
order by
    productid