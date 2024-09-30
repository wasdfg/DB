WITH RECURSIVE numbers AS ( #재귀문으로 0부터 23까지 생성
    SELECT 0 AS num
    UNION ALL
    SELECT num + 1
    FROM numbers
    WHERE num < 23
)
SELECT num as HOUR,count(hour(datetime)) as COUNT 
from numbers left join animal_outs
on num = hour(datetime)
group by num
order by hour;