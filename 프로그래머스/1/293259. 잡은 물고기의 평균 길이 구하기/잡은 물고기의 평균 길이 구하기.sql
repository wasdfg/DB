select round(avg(case when length is null then 10 else length end),2) as AVERAGE_LENGTH 
 from fish_info;