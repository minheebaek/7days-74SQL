/**
  59040 고양이와 개는 몇 마리 있을까
 */

SELECT ANIMAL_TYPE, count(ANIMAL_TYPE)
from ANIMAL_INS
group by ANIMAL_TYPE
order by ANIMAL_TYPE