/**
  131534 상품을 구매한 회원 비율 구하기
 */

SELECT YEAR(SALES_DATE) as YEAR, MONTH(SALES_DATE) as MONTH,
    count(distinct OS.USER_ID) as PUCHASED_USERS,
    round(count(distinct OS.USER_ID)/
    (select count(UI.USER_ID)
    from USER_INFO as UI
    where YEAR(UI.JOINED) = '2021'),1) as PUCHASED_RATIO
from USER_INFO as UI
    join ONLINE_SALE as OS
on UI.USER_ID= OS.USER_ID
where UI.JOINED like '2021%'
group by YEAR, MONTH
order by YEAR , MONTH