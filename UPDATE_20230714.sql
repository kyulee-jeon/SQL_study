CREATE TABLE city_popul (
	city_name CHAR(35),
    population INT);

INSERT INTO city_popul
	SELECT Name, Population FROM world.city;
    
USE market_db;
UPDATE city_popul
	SET city_name = '서울'
    WHERE city_name = 'Seoul';
SELECT * FROM city_popul WHERE city_name = '서울';

UPDATE city_popul
	SET city_name = '뉴욕', population = 0
    WHERE city_name = 'New York';
SELECT * FROM city_popul WHERE city_name = '뉴욕';

UPDATE city_popul
	SET population = population / 10000;
SELECT * FROM city_popul LIMIT 5;

SELECT * FROM city_popul WHERE city_name LIKE 'New%';
DELETE FROM city_popul
	WHERE city_name LIKE 'New%';
