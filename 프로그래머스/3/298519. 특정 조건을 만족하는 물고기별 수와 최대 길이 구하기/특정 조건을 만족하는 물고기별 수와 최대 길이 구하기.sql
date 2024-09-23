select count(*) as FISH_COUNT,max(length) as MAX_LENGTH,fish_type
from (select ID,FISH_TYPE,(case when
                            LENGTH is null then 10
                                  else LENGTH
                           end) as LENGTH,TIME 
      from fish_info) as FISH_INFO
group by fish_type
having avg(length) >= 33
order by fish_type;