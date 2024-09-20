select CATEGORY,sum(sales) as TOTAL_SALES 
    from book left join book_sales on book.book_id = book_sales.book_id 
    where date_format(sales_date,'%Y-%m-%d') between '2022-01-01' and '2022-01-31'
    group by category 
    order by category;