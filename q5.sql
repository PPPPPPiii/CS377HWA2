-- THIS WORK WAS MY OWN WORK. IT WAS WRITTEN WITHOUT CONSULTING
--WORK WRITTEN BY OTHER STUDENTS OR COPIED FROM ONLINE RESOURCES.
--Elizabeth Xu
DROP VIEW IF EXISTS maximum;
DROP VIEW IF EXISTS counting;
SET search_path TO dimeDB; 

CREATE VIEW counting AS
SELECT "bill.id", COUNT(cosponsor) AS num_cosponsor
FROM Vote
WHERE cosponsor = 1
GROUP BY "bill.id";

CREATE VIEW maximum AS 
SELECT MAX(num_cosponsor) as biggest
FROM counting;

SELECT b."bill.id", num_cosponsor AS "numCosponsors", b."bill.str"
FROM counting c
JOIN Bill b
ON b."bill.id" = c."bill.id"
RIGHT JOIN maximum
ON num_cosponsor = maximum.biggest
ORDER BY b."bill.id";
