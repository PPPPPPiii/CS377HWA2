-- THIS WORK WAS MY OWN WORK. IT WAS WRITTEN WITHOUT CONSULTING
--WORK WRITTEN BY OTHER STUDENTS OR COPIED FROM ONLINE RESOURCES.
--Elizabeth Xu

SET search_path TO dimeDB;

SELECT r."bonica.rid", r.name, r.cycle, r."num.givers" AS "numDonors"
FROM Recipient r
LEFT JOIN Contributor c
ON r."bonica.cid" = c."bonica.cid"
WHERE r."num.givers" = (SELECT MAX("num.givers") FROM Recipient r);
