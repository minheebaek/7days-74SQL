/**
  59414 DATETIME에서 DATE로 형 변환
 */

SELECT ANIMAL_ID, NAME, date_format(DATETIME, '%Y-%m-%d')
from ANIMAL_INS
order by ANIMAL_ID