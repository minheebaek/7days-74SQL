/**
  59037 어린 동물 찾기

 */

SELECT ANIMAL_ID, NAME
from ANIMAL_INS
where INTAKE_CONDITION != 'Aged'
order by ANIMAL_ID