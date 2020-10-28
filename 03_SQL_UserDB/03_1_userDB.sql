
/* Tabelle mit user-Daten  */

USE work;
/* Unbedingtes Löschen */
/*DROP TABLE users; */

system clear;

/* Bedingtes Löschen */
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    user_name VARCHAR(20) NOT NULL PRIMARY KEY ,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESC users;

INSERT INTO users (user_name,first_name,family_name) VALUES("max","Max","Mütze");

SELECT * FROM users;

/*

INSERT INTO users (user_name,first_name,family_name) VALUES("max","Max","Martinelli");




*/



