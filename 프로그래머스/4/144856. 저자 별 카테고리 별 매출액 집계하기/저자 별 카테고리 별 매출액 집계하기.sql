SELECT b.AUTHOR_ID,AUTHOR_NAME,CATEGORY,sum(sales*price) as TOTAL_SALES 
from (book_sales as a left join book as b
on a.book_id = b.book_id) left join author c
on b.author_id = c.author_id
where date_format(sales_date,'%Y-%m') = '2022-01'
group by b.author_id,category
order by b.author_id,category desc;