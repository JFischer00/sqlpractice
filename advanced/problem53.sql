with allcountries as (
    select country from suppliers
    union
    select country from customers
),
suppliercountries as (
    select country from suppliers
),
customercountries as (
    select country from customers
)

select
    distinct s.country as scountry,
    c.country as ccountry
from
    allcountries a
left join
    suppliercountries s on a.country = s.country
left join
    customercountries c on a.country = c.country
order by
    s.country,
    c.country