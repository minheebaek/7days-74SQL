/**
  132202 진료과별 총 예약 횟수 출력하기
 */

SELECT MCDP_CD as 진료과코드, count(MCDP_CD) as 5월예약건수
from APPOINTMENT
where APNT_YMD like '2022-05%'
group by MCDP_CD
order by 5월예약건수, 진료과코드