SELECT * FROM public."Taluka";

--359

SELECT tah_name, COUNT(DISTINCT(tah_name)) AS Taluka_Name_Count
FROM public."Taluka"
GROUP BY tah_name
HAVING COUNT(DISTINCT(tah_name)) >0;

SELECT AVG(x)::NUMERIC(10,2) FROM poi;

SELECT * FROM poi
WHERE x IN (SELECT x from poi);


SELECT * FROM poi
WHERE x BETWEEN 9 AND 18


SELECT x ||' , '|| y AS COORDINATE
FROM poi

SELECT x ||' | '|| y AS geom
FROM poi	


CREATE TABLE point(
distance int,
location VARCHAR(255),
Name VARCHAR(100)
)

INSERT INTO point(distance,location,Name)
VALUES(84,'India','Ramesh'), (98,'Bharat','Ashoka'), (34,'Aaryawarth','RanPratap'),(15,'Aarya','RanPratap'),(11,'awarth','Ran')


SELECT * FROM point;
SELECT * FROM poi;

CREATE VIEW  Sample_view AS
SELECT poi.distance FROM poi
RIGHT JOIN point ON poi.distance = point.distance;

SELECT * FROM point
FULL JOIN poi ON poi.distance = point.distance;

DROP VIEW Sample_view 

DROP VIEW IF EXISTS Sample_view;

SELECT * FROM poi;

INSERT INTO poi(name_poi,x,y,address,importance, distance)
VALUES('GIS',10.254,95.21456,'Mumbai','India',8), ('DOA',14.254,95.21456,'Pune','India',18)

ALTER TABLE poi ADD COLUMN No_Bird Int

UPDATE poi
SET address = 'Trichy'
WHERE distance = 14;

ALTER TABLE poi
DROP COLUMN no_bird;

DELETE FROM poi;

CREATE TABLE Bird AS TABLE poi;

TRUNCATE TABLE poi;

SELECT * FROM poi
WHERE  importance ILIKE '%Forest%';

SELECT COUNT(DISTINCT(x)) FROM poi;

SELECT * FROM poi
ORDER BY x DESC
LIMIT 3 OFFSET 1

SELECT MIN(x) AS minValueof_X
FROM poi;

SELECT version()


SELECT importance FROM poi
UNION
SELECT name FROM point;

SELECT COUNT(name),name from point
GROUP BY name;

SELECT * FROM point;
SELECT * FROM poi;

SELECT COUNT(poi.distance), point.distance FROM poi
JOIN point ON poi.distance = point.distance
GROUP BY point.distance

SELECT distance,
CASE
	WHEN distance < 10 THEN 'Near By'
	WHEN distance > 10 AND distance < 15 THEN 'Midium' 
	WHEN distance > 15 THEN 'Far Away'
ELSE
	'Somehhing Messing'
	
END AS Conditions
FROM poi;

SELECT * FROM poi
WHERE distance IS NOT NULL;