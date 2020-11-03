/* Filterung mit WHERE */

USE stocks;
system clear;

#SELECT "hi";

/*
Eingrenzen/Filtern WHERE & AND/OR etc.
Eingrenzen/Filtern WHERE & LIKE + Parameter
Eingrenzen/Filtern WHERE & LIKE + Parameter


*/

/**
SELECT
    ticker "SYM",
    c_name "Unternehmen",
    payouts "Zahlungen p.a",
    price "Aktienpreis/$",
    dividend "Dividende",
    CONCAT(sector, " : ", industry) "Operations"
FROM stocks.ccc_list
-- Einzeldaten / Strings
#WHERE Sector ="Communication services"
#WHERE industry = "Media"
-- Kombination durch AND 

WHERE sector = "Communication Services" AND industry= "Entertainment" 
-- Kombination durch AND / OR
WHERE sector = "Communication Services" AND (ndustry = "Entertainment" OR industry = "Media")
--Kombination durch AND / NOT
WHERE sector = "Communication Services" AND NOT industry = "Media"
OEDER BY industry ASC, price DESC

LIMIT 40;
*/


-- Eingrenzen/Filtern WHERE & LIKE + Parameter
/*
SELECT
    ticker "SYM",
    c_name "Unternehmen",
    industry "Branche"
FROM stocks.ccc_list
-- schafe Suche nach Strings
#WHERE industry = "Entertainment"

-- unschärfere Suche --
-- Branchenname beginnt mit... , dahinter beliebige Chars
#WHERE industry LIKE "Air%"
-- Branchenname endet mit... , davor beliebige Chars
#WHERE industry LIKE "%ment"
-- Branchenname enthaelt...
#WHERE industry LIKE "%ood%"

-- Branchenname endet/beginnt mit... , danach /davor/inmitten genau _ Char
#WHERE industry LIKE "__dia"
#WHERE industry LIKE "Med__"
#WHERE industry LIKE "Me__a"
#WHERE industry LIKE "M_d_a"
#WHERE industry LIKE "_ir%"
#WHERE industry LIKE "_ood%"
WHERE industry LIKE "%ment" AND industry NOT Like "%ipment"  AND industry NOT Like "%tain%"


ORDER BY industry ASC
LIMIT 100;
*/

-- Eingrenzen / Filtern WHERE & RegEx

SELECT
    ticker "SYM",
    c_name "Unternehmen"
FROM stocks.ccc_list
WHERE c_name RLIKE "^[AZ]"
ORDER BY c_name


-- Eingrenzen / Filtern WHERE & IN / NOT BETWEEN
/*
SELECT
    ticker "SYM",
    c_name "Unternehmen",
    industry "Branche"
FROM stocks.ccc_list
#WHERE industry = "Chemicals"
#WHERE industry IN ("Beverages","Banks")
WHERE sector = "Financials" AND industry NOT IN ("Banks","Insurances")
ORDER BY industry DESC;
*/

-- Eingrenzen / Filtern WHERE & BETWEEN / NOT BETWEEN
/*
SELECT
    ticker "SYM",
    c_name "Unternehmen",
    industry "Branche",
    price"Aktienpreis/$"
FROM stocks.ccc_list
#WHERE sector = "Financials" AND (price BETWEEN 30.0 AND 50.0)
WHERE sector = "Financials" AND NOT (price BETWEEN 20.0 AND 250.0)
ORDER BY price DESC;
LIMIT 20;
*/











