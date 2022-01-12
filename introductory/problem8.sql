select
    orderid,
    customerid,
    shipcountry,
from
    orders
where
    shipcountry = 'France' or shipcountry = 'Belgium'