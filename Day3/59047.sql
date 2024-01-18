/**
  59047 이름에 el이 들어가는 동물 찾기
 */

SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where NAME like '%el%'
  and ANIMAL_TYPE ='Dog'
order by NAME