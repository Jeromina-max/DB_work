
/* Tabelle mit user-Daten  */

USE work;
/* Unbedingtes Löschen */
/*DROP TABLE users; */

system clear;

/* Bedingtes Löschen */
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id INT NOT NULL,
    user_name VARCHAR(20) NOT NULL PRIMARY KEY ,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

#DESC users;

INSERT INTO users (id,user_name,first_name,family_name) VALUES(1,"max","Max","Mütze");
INSERT INTO users (id,user_name,first_name,family_name) VALUES(2,"max01","Max","Martinelli");
INSERT INTO users (id,user_name,first_name,family_name) VALUES(3,"max29","Max","Martinelli");

SELECT * FROM users;

ALTER TABLE users ADD plz INT (5) NOT NULL DEFAULT 12345;

SELECT * FROM users;
/*

INSERT INTO users (user_name,first_name,family_name) VALUES("max","Max","Martinelli");




*/



