/**
  131120 3월에 태어난 여성 회원 목록 출력하기
 */

SELECT member_id, member_name, gender, date_format(date_of_birth,'%Y-%m-%d') as date_of_birth
from member_profile
where tlno is not null
  and gender = 'W'
  and date_of_birth like '%03%'
order by member_id