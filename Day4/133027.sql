/**
  133027 주문량이 많은 아이스크림들 조회하기
 */

SELECT FIRST_HALF.FLAVOR
from FIRST_HALF
         join JULY
              on FIRST_HALF.FLAVOR = JULY.FLAVOR
group by FIRST_HALF.FLAVOR
order by sum(JULY.TOTAL_ORDER+FIRST_HALF.TOTAL_ORDER) desc
    limit 3