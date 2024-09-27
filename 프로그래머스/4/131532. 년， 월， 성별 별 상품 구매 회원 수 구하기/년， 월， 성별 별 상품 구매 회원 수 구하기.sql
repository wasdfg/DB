SELECT year(sales_date) as YEAR,month(sales_date) as MONTH,GENDER,count(distinct(a.user_id)) as USERS 
from online_sale as a left join user_info as b
on a.user_id = b.user_id
where gender is not null
group by year,month,gender
order by year,month,gender;