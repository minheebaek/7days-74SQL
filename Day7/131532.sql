/**
  131532 년, 월, 성별 별 상품 구매 회원 수 구하기
 */

SELECT YEAR(SALES_DATE) as YEAR, MONTH(SALES_DATE) as MONTH, GENDER, count(distinct USER_INFO.USER_ID) as USERS
from USER_INFO
    join ONLINE_SALE
on USER_INFO.USER_ID = ONLINE_SALE.USER_ID
where GENDER is not null
group by YEAR, MONTH, GENDER
order by YEAR, MONTH, GENDER