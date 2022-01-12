select
    supplierid,
    contactname,
    contacttitle
from
    suppliers
where
    contacttitle != 'Marketing Manager'