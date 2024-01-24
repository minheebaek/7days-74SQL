/**
  164671 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
 */

select concat('/home/grep/src/',F.BOARD_ID,'/', F.FILE_ID, F.FILE_NAME, F.FILE_EXT)as FILE_PATH
from
    (SELECT *
     from USED_GOODS_BOARD
     order by views desc
         limit 1) as B
        join USED_GOODS_FILE as F
             on B.BOARD_ID = F.BOARD_ID
order by F.FILE_ID desc