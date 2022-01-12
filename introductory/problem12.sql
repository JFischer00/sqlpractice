select
    firstname,
    lastname,
    concat_ws(' ', firstname, lastname) as fullname
from
    employees