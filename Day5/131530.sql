/**
  131530 가격대 별 상품 개수 구하기
 */

select truncate(PRICE,-4)as PRICE_GROUP, count(*)as PRODUCTS
from PRODUCT
group by PRICE_GROUP
order by PRICE_GROUP