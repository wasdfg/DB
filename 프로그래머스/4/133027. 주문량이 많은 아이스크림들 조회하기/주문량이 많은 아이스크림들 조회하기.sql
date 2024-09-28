SELECT flavor
FROM (select flavor,sum(total_order) as a 
      from july 
      group by flavor 
      union 
      select flavor,sum(total_order) as a 
      from first_half 
      group by flavor) 
      as b
group by flavor
order by sum(a) desc limit 3;
