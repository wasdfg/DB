select ID,EMAIL,FIRST_NAME,LAST_NAME 
from DEVELOPERS left join skillcodes on skillcodes.code = developers.skill_code 
where skill_code & (select code from skillcodes where name = 'C#') or skill_code & (select code from skillcodes where name = 'Python')
order by id
                                                                                      