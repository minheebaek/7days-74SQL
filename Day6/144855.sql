/**
  144855 카테고리 별 도서 판매량 집계하기
 */

SELECT CATEGORY, sum(SALES) as TOTAL_SALES
from BOOK
         join BOOK_SALES
              on BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
where SALES_DATE like '2022-01%'
group by CATEGORY
order by CATEGORY