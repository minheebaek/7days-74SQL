/**
  157339 특정 기간동안 대여 가능한 자동차들의 대여비용 구하기
 */

select C.CAR_ID, C.CAR_TYPE,
       cast(C.DAILY_FEE * 30 * (1-P.DISCOUNT_RATE*0.01) as signed)as FEE
from CAR_RENTAL_COMPANY_CAR as C
         join CAR_RENTAL_COMPANY_DISCOUNT_PLAN as P
              on C.CAR_TYPE = P.CAR_TYPE
where C.CAR_ID not in(
    select distinct CAR_ID
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where START_DATE <= '2022-11-30' and END_DATE>='2022-11-01'
)
  and C.CAR_TYPE in ('SUV', '세단')
  and P.DURATION_TYPE = '30일 이상'
  and C.DAILY_FEE * 30 * (1-P.DISCOUNT_RATE*0.01)>=500000
  and C.DAILY_FEE * 30 * (1-P.DISCOUNT_RATE*0.01)<2000000
order by FEE desc, C.CAR_TYPE, C.CAR_ID desc