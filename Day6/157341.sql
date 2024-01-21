/**
  157341 대여 기록이 존재하는 자동차 리스트 구하기
 */

SELECT distinct H.CAR_ID
from CAR_RENTAL_COMPANY_RENTAL_HISTORY as H
         join CAR_RENTAL_COMPANY_CAR as C
              on H.CAR_ID = C.CAR_ID
where CAR_TYPE = '세단'
  and START_DATE like '2022-10%'
order by H.CAR_ID desc