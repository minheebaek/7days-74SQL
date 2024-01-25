/**
  59413 입양 시각 구하기(2)
 */

set @hour := -1;
select @hour := @hour+1 as HOUR,
(
    select count(*)
    from ANIMAL_OUTS
    where HOUR(DATETIME) = @HOUR
) as COUNT
from ANIMAL_OUTS
where @hour <23