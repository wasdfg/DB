select a.DEPT_ID as DEPT_ID,DEPT_NAME_EN,round(avg(sal),0) as AVG_SAL 
from hr_employees as a left join hr_department as b on a.dept_id = b.dept_id 
group by dept_id
order by avg_sal desc;