with class as(
select emp_no,(case 
               when avg(score) >= 96 then 'S' 
               when avg(score) >= 90 and avg(score) < 96 then 'A'
               when avg(score) >= 80 and avg(score) < 90 then 'B'
               else 'C'
               end) as sc 
    from hr_grade 
    group by emp_no
)
select he.EMP_NO,EMP_NAME,sc as GRADE,(case 
                                       when sc = 'S' then sal * 0.2
                                       when sc = 'A' then sal * 0.15
                                       when sc = 'B' then sal * 0.1
                                       else 0
                                      end)as BONUS 
from hr_employees as he left join class as c 
on he.emp_no = c.emp_no
order by emp_no;