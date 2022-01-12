select
    e.employeeid,
    e.lastname,
    count(*) as lateorders
from
    orders o
join
    employees e on o.employeeid = e.employeeid
where
    o.shippeddate >= o.requireddate
group by
    e.employeeid,
    e.lastname
order by
    lateorders desc