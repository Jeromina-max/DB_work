/* QUERIES Basic */

system clear;
-- SELECT "Hi";

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc_list;

-- Abfrage aller Spalten der Tab
-- 10 Zeilen ab 0
SELECT * FROM stocks.ccc_list LIMIT 0,10;

-- 5 Zeilen ab 10
SELECT * FROM stocks.ccc_list LIMIT 10,5;

-- Abfrage eines Felds oder einer Feld-Kombi (1-10 rows)
/*
SELECT
ticker,c_name,industry
FROM stocks.ccc_list
LIMIT 10;
*/

-- Abfrage eines Felds oder einer Feld-Kombi m. Umbenennung (Alias)
/**/
SELECT 
ticker AS "SYMBOL",
c_name AS "Unternehmen",
price As "Preis in pro Aktie/$"
FROM stocks.ccc_list
LIMIT 10;




-- Kombinationen aus mehreren Feldern in neues Feld
-- hier mit Verknüpfung CONCAT() // String-Fkt.

SELECT
ticker "sym",
c_name "company",
CONCAT(sector," | ",industry) "operations"
FROM stocks.ccc_list
LIMIT 10;











