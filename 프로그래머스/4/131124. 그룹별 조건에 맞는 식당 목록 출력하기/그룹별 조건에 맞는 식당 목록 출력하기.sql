select MEMBER_NAME,REVIEW_TEXT,date_format(REVIEW_DATE,'%Y-%m-%d') as REVIEW_DATE from 
(rest_review as x left join (select member_id,rank() over (order by count(member_id) desc) as rk 
from rest_review 
group by member_id) as y
on x.member_id = y.member_id) 
left join member_profile as z
on x.member_id = z.member_id
where rk = 1
order by review_date,review_text;