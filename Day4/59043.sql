/**
  59043 있었는데요 없었습니다

 */

SELECT I.ANIMAL_ID, I.NAME
from ANIMAL_INS as I
         join ANIMAL_OUTS as O
              on I.ANIMAL_ID = O.ANIMAL_ID
where  I.DATETIME >O.DATETIME
order by I.DATETIME