/* Tabelle mit user-Daten */

system clear;

/* Bedingtes Löschen*/
DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id INT NOT NULL,
    user_name VARCHAR(20) NOT NULL PRIMARY KEY,
    user_mail varchar(20) NOT NULL,
    user_pwd varchar(8) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

INSERT INTO users 
    (id,user_name,user_mail,user_pwd,first_name,family_name) 
VALUES
    (1,"max","max@gmx.de","#70gDx12","Max","Mütze"),
    (2,"max01","max@boo.com","#boo","Max","Martinelli"),
    (3,"max29","info@martinelli.it","#user123","Max","Martinelli");

ALTER TABLE users ADD plz INT(5) NOT NULL DEFAULT 12345;

DESC users;
SELECT * FROM users;

/*
    PWD-Speicherung als Klartext
    --> Sicherheitsrisiko!

*/
