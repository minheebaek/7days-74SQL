/**
  151136 평균 일일 대여 요금 구하기
 */

SELECT round(avg(daily_fee)) as average_fee
from car_rental_company_car
where car_type='SUV';