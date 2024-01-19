/**
  59045 보호소에서 중성화한 동물
 */

SELECT O.ANIMAL_ID, O.ANIMAL_TYPE, O.NAME
from ANIMAL_OUTS as O
         join ANIMAL_INS as I
              on O.ANIMAL_ID = I.ANIMAL_ID
where (O.SEX_UPON_OUTCOME like 'Spayed%'or O.SEX_UPON_OUTCOME like 'Neutered%')
  and I.SEX_UPON_INTAKE like 'Intact%'
order by O.ANIMAL_ID