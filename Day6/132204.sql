/**
  132204 취소되지 않은 진료 예약 조회하기
 */

SELECT A.APNT_NO, P.PT_NAME	, P.PT_NO, D.MCDP_CD, D.DR_NAME, A.APNT_YMD
from PATIENT as P
         join APPOINTMENT as A
              on P.PT_NO = A.PT_NO
         join DOCTOR as D
              on A.MDDR_ID = D.DR_ID
where D.MCDP_CD='CS' and A.APNT_YMD like '2022-04-13%' and A.APNT_CNCL_YN = 'N'
order by A.APNT_YMD