select
    contacttitle,
    count(contacttitle) as num_records
from
    customers
group by
    contacttitle
order by
    num_records desc,
    contacttitle