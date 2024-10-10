with skill_P as (
    select code from skillcodes where name = 'Python'
),
skill_F as (
    select sum(code) as code from skillcodes where category = 'Front End'
),
skill_C as (
    select code from skillcodes where name = 'C#'
)
select (case
        when skill_P.code & skill_code and skill_F.code & skill_code then 'A'
        when skill_C.code & skill_code then 'B'
        when skill_F.code & skill_code then 'C'
        end) as GRADE,ID,EMAIL 
from developers,skill_P,skill_F,skill_C
having grade is not null
order by grade,id;