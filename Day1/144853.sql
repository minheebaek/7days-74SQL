/**
  144853 조건에 맞는 도서 리스트 출력하기
 */

SELECT book_id, date_format(published_date, '%Y-%m-%d') as published_date
from book
where published_date like '2021%'
  and category='인문'
order by published_date