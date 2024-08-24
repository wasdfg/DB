select sum(score) as SCORE,HR_EMPLOYEES.emp_no as EMP_NO,emp_name,position,email 
from hr_employees left join hr_grade 
on hr_employees.emp_no = hr_grade.emp_no 
where year = 2022 
group by HR_GRADE.emp_no 
order by score desc 
limit 1; 