select b.animal_id,b.name
from ANIMAL_INS as a left join ANIMAL_OUTS as b
on a.animal_id = b.animal_id
where b.animal_id is not null
order by (b.datetime-a.datetime) desc
limit 2;