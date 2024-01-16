/**
  131535 조건에 맞는 회원수 구하기
 */

SELECT count(*) as 'USERS'
from user_info
where joined like '2021%'
  and age between 20 and 29