select PT_NAME,PT_NO,GEND_CD,AGE,
case 
    when tlno is null then 'NONE'
    else
        tlno
end
as TLNO
from patient
where gend_cd = 'W' and age <= 12
order by age desc,pt_name;