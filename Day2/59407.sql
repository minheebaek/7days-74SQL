/**
  59407 이름이 있는 동물의 아이디
 */

SELECT animal_id
from animal_ins
where name is not null
order by animal_id