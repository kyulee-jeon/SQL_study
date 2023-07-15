-- Integer Type
USE market_db;
CREATE TABLE hongong4 (
	tynyint_col TINYINT,
	smallint_col SMALLINT,
    int_col INT,
    bigint_col BIGINT
);
INSERT INTO hongong4 VALUES(127, 32767, 2147483647, 9000000000000000000);
INSERT INTO hongong4 VALUES(128, 32768, 2147483648, 9000000000000000001);
-- UNSIGNED (-128~127 > 0~256)
DESC member;


-- VARIABLE
USE market_db;
SET @myVar1 = 5;
SET @myVar2 = 4.25;

SELECT @myVar1;
SELECT @myVar1 + @myVar2;

SET @txt = '가수 이름 ==> ';
SET @height = 166;
SELECT @txt, mem_name FROM member WHERE height > @height;

SET @count = 3;
-- [error] SELECT mem_name, height FROM member ORDER BY mem_name LIMIT @count;
PREPARE mySQL FROM 'SELECT mem_name, height FROM member ORDER BY mem_name LIMIT ?';
EXECUTE mySQL USING @count;


-- DATA TYPE CONVERSION (CAST AS, CONVERT) to CHAR, SIGNED, UNSIGNED, DATE, TIME, DATETIME, etc.
SELECT AVG(price) '평균 가격' FROM buy; -- FLOAT
SELECT CAST(AVG(price) AS SIGNED) '평균 가격' FROM buy; -- INT 
SELECT CONVERT(AVG(price), SIGNED) '평균 가격' FROM buy; -- INT
SELECT CAST('2023%07%15' AS DATE);
SELECT num, CONCAT( CAST(price AS SIGNED), ' X ' , CAST(amount AS SIGNED) ) '가격 X 수량', price*amount '구매액' FROM buy;

SELECT '100'+200;
SELECT '100'+'200';
SELECT CONCAT(100, '200');
