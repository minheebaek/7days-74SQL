/**
  133025 과일로 만든 아이스크림 고르기
 */
SELECT FIRST_HALF.FLAVOR
from FIRST_HALF
join ICECREAM_INFO
on FIRST_HALF.FLAVOR = ICECREAM_INFO.FLAVOR
where TOTAL_ORDER > 3000
and INGREDIENT_TYPE = 'fruit_based'
order by TOTAL_ORDER desc