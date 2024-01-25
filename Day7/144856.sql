/**
  144856 저자 별 카테고리 별 매출액 집계하기
 */
SELECT A.AUTHOR_ID, A.AUTHOR_NAME, B.CATEGORY, sum(PRICE*SALES) as TOTAL_SALES
from BOOK as B
         join AUTHOR as A
              on B.AUTHOR_ID = A.AUTHOR_ID
         left join BOOK_SALES as S
                   on B.BOOK_ID = S.BOOK_ID
where S.SALES_DATE like '2022-01%'
group by A.AUTHOR_NAME, B.CATEGORY
order by A.AUTHOR_ID, B.CATEGORY desc