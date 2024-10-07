select distinct(id),email,first_name,last_name
from developers join (select code from skillcodes where category = 'Front End') as a
on code & skill_code != 0
order by id;