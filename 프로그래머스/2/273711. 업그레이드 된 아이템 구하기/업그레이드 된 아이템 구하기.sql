select item_tree.ITEM_ID as ITEM_ID,ITEM_NAME,RARITY 
from item_info 
left join item_tree on item_info.item_id = item_tree.item_id 
where parent_item_id in (select item_id from item_info where rarity = 'RARE') 
order by item_id desc;