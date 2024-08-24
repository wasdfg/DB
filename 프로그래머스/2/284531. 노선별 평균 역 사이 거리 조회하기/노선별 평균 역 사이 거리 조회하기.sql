select route,
concat(round(sum(D_BETWEEN_DIST),1),'km') as TOTAL_DISTANCE,
concat(round(avg(D_BETWEEN_DIST),2),'km') as AVERAGE_DISTANCE 
from SUBWAY_DISTANCE 
group by route 
order by sum(D_BETWEEN_DIST) desc; #TOTAL_DISTANCE로 기준을 잡으면 문자열로 정렬됨