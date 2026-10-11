-- THIS WORK WAS MY OWN WORK. IT WAS WRITTEN WITHOUT CONSULTING
--WORK WRITTEN BY OTHER STUDENTS OR COPIED FROM ONLINE RESOURCES.
--Elizabeth Xu

SET search_path TO dimeDB;

SELECT "bonica.cid", "most.recent.contributor.name" AS name, "contributor.type" AS type, COALESCE("amount.1980", 0) + COALESCE("amount.1982", 0) + COALESCE("amount.1984", 0) + COALESCE("amount.1986", 0) + COALESCE("amount.1988", 0) + COALESCE("amount.1990", 0) + COALESCE("amount.1992", 0) + COALESCE("amount.1994", 0) + COALESCE("amount.1996", 0) + COALESCE("amount.1998", 0) + COALESCE("amount.2000", 0) + COALESCE("amount.2002", 0) + COALESCE("amount.2004", 0) + COALESCE("amount.2006", 0) + COALESCE("amount.2008", 0) + COALESCE("amount.2010", 0) + COALESCE("amount.2012", 0) + COALESCE("amount.2014", 0) + COALESCE("amount.2016", 0) + COALESCE("amount.2018", 0) + COALESCE("amount.2020", 0) + COALESCE("amount.2022", 0) AS "totalAmount"
FROM Contributor c
ORDER BY totalAmount DESC NULLS LAST
LIMIT 10;

