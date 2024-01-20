/**
  59411 오랜 기간 보호한 동물(2)
 */

SELECT O.ANIMAL_ID, O.NAME
from ANIMAL_OUTS as O
         inner join ANIMAL_INS as I
                    on O.ANIMAL_ID = I.ANIMAL_ID
order by datediff(O.DATETIME,I.DATETIME)+1 desc
    limit 2