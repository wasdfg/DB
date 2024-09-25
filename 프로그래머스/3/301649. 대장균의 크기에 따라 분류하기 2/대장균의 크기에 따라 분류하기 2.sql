select ID,(case when colony_row = 1 then 'LOW'
          when colony_row = 2 then 'MEDIUM'
           when colony_row = 3 then 'HIGH'
           when colony_row = 4 then 'CRITICAL'
           end) as COLONY_NAME
from (select id,ntile(4) over (order by size_of_colony) as colony_row 
      from ecoli_data) as a
order by id;