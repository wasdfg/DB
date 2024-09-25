select id,fish_name,length as length 
from fish_info as a inner join fish_name_info as b on a.fish_type = b.fish_type
where length = (select max(length) from fish_info where fish_type = a.fish_type);
