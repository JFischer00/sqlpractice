select
    e.employeeid,
    e.lastname,
    count(*) as totalorders,
    sum(if(o.shippeddate >= o.requireddate, 1, 0)) as lateorders,
    format(sum(if(o.shippeddate >= o.requireddate, 1, 0)) / count(*), 2) as percentlate
from
    employees e
join
    orders o on o.employeeid = e.employeeid
group by
    e.employeeid,
    e.lastname
order by
    e.employeeid