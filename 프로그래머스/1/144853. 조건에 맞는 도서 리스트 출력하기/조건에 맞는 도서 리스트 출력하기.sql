select BOOK_ID,date_format(PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATE 
from book
where category = '인문' and year(published_date) = 2021
order by PUBLISHED_DATE;