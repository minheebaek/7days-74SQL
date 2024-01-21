/**
  131116 식품분류별 가장 비싼 식품의 정보 조회하기
 */
select CATEGORY, PRICE as MAX_PRICE, PRODUCT_NAME
from FOOD_PRODUCT
where (PRICE,CATEGORY)in (SELECT  max(PRICE), CATEGORY
                          from FOOD_PRODUCT
                          where CATEGORY in('과자','국','김치','식용유')
                          group by CATEGORY)
order by PRICE desc