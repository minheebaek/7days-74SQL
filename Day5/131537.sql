/**
  131537 오프라인/온라인 판매 데이터 통합하기
 */

(SELECT date_format(SALES_DATE,'%Y-%m-%d') as SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
 from ONLINE_SALE
 where SALES_DATE like '2022-03%')

union

(select date_format(SALES_DATE,'%Y-%m-%d') as SALES_DATE, PRODUCT_ID, null as USER_ID, SALES_AMOUNT
 from OFFLINE_SALE
 where SALES_DATE like '2022-03%'
)
order by SALES_DATE, PRODUCT_ID,USER_ID