select a.NAME as NAME,a.DATETIME as DATETIME 
from ANIMAL_INS as a left join ANIMAL_OUTS as b on a.animal_id = b.animal_id
where b.datetime is null
order by a.datetime 
limit 3;