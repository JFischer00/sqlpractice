select
    c.categoryname,
    count(*) as productcount
from
    products p
join
    categories c on p.categoryid = c.categoryid
group by
    p.categoryid
order by
    productcount desc