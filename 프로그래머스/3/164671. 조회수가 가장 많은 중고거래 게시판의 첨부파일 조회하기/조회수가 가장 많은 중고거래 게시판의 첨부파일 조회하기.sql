SELECT concat('/home/grep/src/',a.board_id,'/',file_id,file_name,file_ext) as FILE_PATH 
from USED_GOODS_BOARD as a left join USED_GOODS_FILE as b on a.board_id = b.board_id
where views = (select max(views) from USED_GOODS_BOARD)
order by file_id desc;