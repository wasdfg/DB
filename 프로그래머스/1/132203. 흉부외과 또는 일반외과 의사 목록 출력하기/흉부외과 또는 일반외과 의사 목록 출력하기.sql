select DR_NAME,DR_ID,MCDP_CD,date_format(HIRE_YMD,'%Y-%m-%d') as HIRE_YMD
from DOCTOR
where mcdp_cd in('CS','GS')
order by hire_ymd desc,dr_name;