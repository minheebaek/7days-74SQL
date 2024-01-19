/**
  131118 서울에 위치한 식당 목록 출력하기
 */

SELECT I.REST_ID, REST_NAME,FOOD_TYPE, FAVORITES, ADDRESS,round(avg(R.REVIEW_SCORE),2) as SCORE
from REST_INFO as I
join REST_REVIEW as R
on I.REST_ID = R.REST_ID
group by R.REST_ID
having I.ADDRESS like '서울%'
order by SCORE desc, I.FAVORITES desc