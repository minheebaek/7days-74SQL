/**
  59044 오랜 기간 보호한 동물(1)
 */

SELECT I.NAME, I.DATETIME
from ANIMAL_INS as I
         left join ANIMAL_OUTS as O
                   on I.ANIMAL_ID = O.ANIMAL_ID
where O.ANIMAL_ID is null
order by I.DATETIME
    limit 3