SELECT HISTORY_ID,(case
                   when datediff(end_date,start_date)+1 >= 90 
                   then daily_fee * (datediff(end_date,start_date)+1) / 100 * (select 100 - convert(substring_index(discount_rate,'%',1),char) 
                   from CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                   where car_type = '트럭' and substring_index(duration_type,'일',1) = '90')
                   when datediff(end_date,start_date)+1 >= 30 
                   then daily_fee * (datediff(end_date,start_date)+1) / 100 * (select 100 - convert(substring_index(discount_rate,'%',1),char) 
                   from CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                   where car_type = '트럭' and substring_index(duration_type,'일',1) = '30')
                   when datediff(end_date,start_date)+1 >= 7 
                   then daily_fee * (datediff(end_date,start_date)+1) / 100 * (select 100 - convert(substring_index(discount_rate,'%',1),char) 
                   from CAR_RENTAL_COMPANY_DISCOUNT_PLAN 
                   where car_type = '트럭' and substring_index(duration_type,'일',1) = '7')
                   else (datediff(end_date,start_date)+1) * daily_fee
                   end) as FEE 
from CAR_RENTAL_COMPANY_RENTAL_HISTORY as a left join CAR_RENTAL_COMPANY_CAR as b 
on a.car_id = b.car_id
where b.car_type = '트럭'
group by history_id
order by fee desc,history_id desc;