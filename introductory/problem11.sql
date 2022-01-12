select
    firstname,
    lastname,
    title,
    date(birthdate) as birthdate_new
from
    employees
order by
    birthdate