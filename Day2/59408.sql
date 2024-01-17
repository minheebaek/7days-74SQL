/**
  59408 중복 제거하기
 */

SELECT count(distinct name) as count
from animal_ins
where name is not null

--개선 코드--
SELECT count(distinct name)
from animal_ins