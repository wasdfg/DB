with avg_colony as (
    select max(size_of_colony) as colony,year(DIFFERENTIATION_DATE) as year
    from ECOLI_DATA
    group by year(DIFFERENTIATION_DATE)
)
select year(DIFFERENTIATION_DATE) as YEAR,
(avg_colony.colony - SIZE_OF_COLONY)
as YEAR_DEV,
ID 
from ECOLI_DATA join avg_colony on year(ECOLI_DATA.DIFFERENTIATION_DATE) = avg_colony.year
order by year,year_dev;