SELECT distinct(USER_ID),NICKNAME,concat(city," ",street_address1," ",street_address2)as 전체주소,concat(substr(tlno,1,3),'-',substr(tlno,4,4),'-',substr(tlno,8,4)) as 전화번호 
from USED_GOODS_BOARD as a left join used_goods_user as b on writer_id = user_id
where user_id in (select writer_id from used_goods_board group by writer_id having count(writer_id) > 2)
order by user_id desc;