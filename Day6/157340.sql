/**
  157340 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
 */

SELECT CAR_ID,
       case when CAR_ID in (
           select CAR_ID
           from CAR_RENTAL_COMPANY_RENTAL_HISTORY
           where '2022-10-16' between START_DATE and END_DATE
       )
                then '대여중'
            else '대여 가능'
           end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
order by CAR_ID desc