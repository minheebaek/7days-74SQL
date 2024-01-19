/**
  131117 5월 식품들의 총매출 조회하기
 */

SELECT O.PRODUCT_ID, P.PRODUCT_NAME, sum(O.AMOUNT *P.PRICE) as TOTAL_SALES
from FOOD_ORDER as O
         join FOOD_PRODUCT as P
              on P.PRODUCT_ID = O.PRODUCT_ID
where O.PRODUCE_DATE like '2022-05%'
group by P.PRODUCT_ID
order by TOTAL_SALES desc, P.PRODUCT_ID