/**
  164668 조건에 맞는 사용자와 총 거래금액 조회하기
 */

select USER_ID,NICKNAME,sum(PRICE) as TOTAL_SALES
from USED_GOODS_BOARD as B
         join USED_GOODS_USER as U
              on B.WRITER_ID = U.USER_ID
where B.STATUS like 'DONE'
group by B.WRITER_ID
having TOTAL_SALES>=700000
order by TOTAL_SALES