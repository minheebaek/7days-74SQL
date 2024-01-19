/**
  131533 상품 별 오프라인 매출 구하기
 */

SELECT PRODUCT_CODE, sum(PRICE*SALES_AMOUNT) as SALES
from PRODUCT as P
         join OFFLINE_SALE as O
              on P.PRODUCT_ID = O.PRODUCT_ID
group by PRODUCT_CODE
order by SALES desc, PRODUCT_CODE