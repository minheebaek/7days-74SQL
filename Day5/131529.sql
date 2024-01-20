/**
  131529 카테고리 별 상품 개수 구하기
 */

SELECT substr(PRODUCT_CODE,1,2) as CATEGORY, count(*) as PRODUCTS
from PRODUCT
group by CATEGORY
order by CATEGORY