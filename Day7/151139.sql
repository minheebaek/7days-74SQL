/**
  151139 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
 */

select MONTH(START_DATE) as MONTH, CAR_ID, count(*) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where CAR_ID in (SELECT CAR_ID
    from CAR_RENTAL_COMPANY_RENTAL_HISTORY
    where START_DATE between '2022-08-01' and '2022-10-31'
    group by CAR_ID
    having count(CAR_ID)>=5)
  and START_DATE between '2022-08-01' and '2022-10-31'
group by CAR_ID, MONTH
having RECORDS >0
order by MONTH, CAR_ID desc