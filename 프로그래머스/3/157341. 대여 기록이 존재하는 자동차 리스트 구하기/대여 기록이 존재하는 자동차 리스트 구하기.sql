-- 코드를 입력하세요
SELECT distinct(b.car_id) as CAR_ID
    from CAR_RENTAL_COMPANY_CAR as a left join CAR_RENTAL_COMPANY_RENTAL_HISTORY as b on a.car_id = b.car_id
    where car_type = '세단' and start_date between '2022-10-01' and '2022-10-31'
order by car_id desc;