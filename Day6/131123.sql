/**
  131123 즐겨찾기가 가장 많은 식당 정보 출력하기
 */

select FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
from REST_INFO
where(FOOD_TYPE, FAVORITES) in (
    select FOOD_TYPE, max(FAVORITES) as FAVORITES
    from REST_INFO
    group by FOOD_TYPE
)
order by FOOD_TYPE desc