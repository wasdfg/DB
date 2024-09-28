select flavor 
from first_half 
join july using(flavor) #속성의 이름이 정확히 같을 경우에 사용 가능
group by flavor
order by sum(first_half.total_order)+sum(july.total_order) desc limit 3;