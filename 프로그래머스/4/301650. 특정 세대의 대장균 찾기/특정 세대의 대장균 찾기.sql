select ID 
from (select id,parent_id 
      from ecoli_data
      where parent_id in (select id 
                          from ecoli_data 
                          where parent_id in (select id 
                                              from ecoli_data 
                                              where parent_id is null)
        )
) as a
order by id;