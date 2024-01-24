/**
  164670 조건에 맞는 사용자 정보 조회하기
 */

select USER_ID, NICKNAME, concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as 전체주소, concat(left(U.TLNO,3),'-',mid(U.TLNO,4,4),'-',right(U.TLNO,4)) as 전화번호
from (SELECT *
      from USED_GOODS_BOARD
      group by WRITER_ID
      having count(*)>=3) as B
         join USED_GOODS_USER as U
              on B.WRITER_ID = U.USER_ID
order by USER_ID desc