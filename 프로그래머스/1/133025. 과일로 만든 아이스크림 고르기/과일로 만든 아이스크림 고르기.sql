select FIRST_HALF.flavor 
from FIRST_HALF left join ICECREAM_INFO on FIRST_HALF.flavor = ICECREAM_INFO.flavor
where INGREDIENT_TYPE = 'fruit_based' and total_order > 3000;