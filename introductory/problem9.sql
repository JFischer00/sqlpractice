select
    orderid,
    customerid,
    shipcountry
from
    orders
where
    shipcountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela')