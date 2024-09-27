SELECT distinct(a.cart_id) as CART_ID
from cart_products as a join cart_products as b 
on a.cart_id = b.cart_id
where (a.name = 'milk' and b.name = 'yogurt');