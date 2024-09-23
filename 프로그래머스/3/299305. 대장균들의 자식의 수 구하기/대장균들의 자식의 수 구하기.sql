select id,(select count(*) from ecoli_data where parent_id = a.id) as CHILD_COUNT
from ecoli_data as a
order by 1;