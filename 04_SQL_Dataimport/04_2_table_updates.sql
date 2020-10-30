/* CRUD Update | Select | Delete */


system clear;

SELECT * FROM cats;

/* Eingrenzen durch WHERE */

/* UPDATE */
#UPDATE cats SET name="Alonzo";
#UPDATE cats SET name="Alonzo" WHERE id=2;
#UPDATE cats SET name="Alonzo" WHERE fur_color="grey";
#UPDATE cats SET name="Alonzo",fur_color="red" WHERE name="Alonza";
#SELECT * FROM cats;


/* SELECT  + Modifikation mit AS */

#SELECT * FROM cats;  # gesamte Tabelle
#SELECT name FROM cats; # Feld name
#SELECT name,age FROM cats; # Feld name + age
#SELECT age,name FROM cats; # Feld age + name
#SELECT name AS "Name", age "Alter der Katze" FROM cats; # Feld name + age

#SELECT name,age FROM cats WHERE id=1;
SELECT name "Namen",fur_color "Fellfarbe" FROM cats WHERE fur_color="red";
#SELECT name "Name",age "Alter" FROM cats WHERE age >=40;

/* DELETE Vorsicht !!! */

#DELETE FROM cats; # gesamte Tab löschen!
#DELETE FROM cats WHERE id=1;
#DELETE FROM cats WHERE age >=40;

#SELECT * FROM cats;










