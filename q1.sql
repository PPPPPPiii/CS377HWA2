-- THIS WORK WAS MY OWN WORK. IT WAS WRITTEN WITHOUT CONSULTING
--WORK WRITTEN BY OTHER STUDENTS OR COPIED FROM ONLINE RESOURCES.
--Elizabeth Xu

SET search_path TO dimeDB;

SELECT DISTINCT r.name, r.party AS party
FROM Recipient r
WHERE r.state ILIKE 'ga' and r.cycle = 2022 and r.seat = 'state:governor'
Order By r.name;