with allcountries as (
    select country from suppliers
    union
    select country from customers
),
suppliercountries as (
    select country, count(country) as scountries from suppliers group by country
),
customercountries as (
    select country, count(country) as ccountries from customers group by country
)

select
    a.country,
    ifnull(scountries, 0) as scountry,
    ifnull(ccountries, 0) as ccountry
from
    allcountries a
left join
    suppliercountries s on a.country = s.country
left join
    customercountries c on a.country = c.country
order by
    a.country