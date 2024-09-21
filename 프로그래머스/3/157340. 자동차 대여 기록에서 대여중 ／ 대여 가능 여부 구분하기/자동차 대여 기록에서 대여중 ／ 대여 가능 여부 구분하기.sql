select car_id,
(case when max(start_date <= '2022-10-16' and end_date >= '2022-10-16') = 1 then '대여중'
    else '대여 가능'
end)
as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
order by car_id desc;