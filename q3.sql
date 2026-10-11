-- THIS WORK WAS MY OWN WORK. IT WAS WRITTEN WITHOUT CONSULTING
--WORK WRITTEN BY OTHER STUDENTS OR COPIED FROM ONLINE RESOURCES.
--Elizabeth Xu

SET search_path TO dimeDB;

SELECT "bonica.cid", "most.recent.contributor.name" AS name, "contributor.type" AS type, "amount.2022" AS "totalAmount"
FROM Contributor c
ORDER BY c."amount.2022" DESC NULLS LAST
LIMIT 10;
