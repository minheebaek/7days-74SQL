/**
  59042 없어진 기록 찾기
 */

SELECT O.ANIMAL_ID, O.NAME
from  ANIMAL_OUTS as O
          left join ANIMAL_INS as I
                    on I.ANIMAL_ID = O.ANIMAL_ID
where I.ANIMAL_ID is null
order by O.ANIMAL_ID