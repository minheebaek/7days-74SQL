/**
    59041 동명 동물 수 찾기
 */

SELECT NAME, count(NAME)
from ANIMAL_INS
where name is not null
group by NAME
having count(*)>1
order by name