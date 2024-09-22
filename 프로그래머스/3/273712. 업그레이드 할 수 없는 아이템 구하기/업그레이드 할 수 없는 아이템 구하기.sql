select a.ITEM_ID as ITEM_ID,ITEM_NAME,RARITY 
from item_info as a left join item_tree as b on a.item_id = b.item_id
where a.item_id not in 
(select item_id from item_tree where item_id in 
 (select parent_item_id from item_tree where parent_item_id is not null))
order by a.item_id desc;