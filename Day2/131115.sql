/**
  131115 가격이 제일 비싼 식품의 정보 출력하기
 */

SELECT *
from food_product
order by price desc
limit 1