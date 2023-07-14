-- SELECT 열 FROM 테이블 WHERE 조건;
SELECT * FROM member WHERE member_name = '아이유';

-- INDEX (데이터 조회 소요시간 단축)
CREATE INDEX idx_member_name ON member(member_name);

-- VIEW (가상 테이블; 진짜 테이블에 링크된 개념): 보안 및 SQL 간략화
CREATE VIEW member_view
AS
    SELECT * FROM member;

SELECT * FROM member_view;

-- STORED PROCEDURE (프로그래밍 로직 작성)
DELIMITER //
CREATE PROCEDURE myProc()
BEGIN
    SELECT * FROM member WHERE member_name = '나훈아';
    SELECT * FROM product WHERE product_name = '삼각김밥';
END //
DELIMITER ;

CALL myProc();
