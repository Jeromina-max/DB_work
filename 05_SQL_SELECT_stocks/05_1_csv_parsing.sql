/* Parsen der csv-Datei / DB + Tab anlegen */

system clear;

-- DB anlegen, falls diese noch nicht existiert
CREATE DATABASE IF NOT EXISTS stocks;
#SHOW DATABASES;

-- focus
USE stocks;

-- TAB löschen, falls existent
DROP TABLE IF EXISTS ccc_list;
#SHOW TABLES;

-- TAB anlegen, falls diese noch nicht existiert
CREATE TABLE IF NOT EXISTS stocks.ccc_list

(
    id INT NOT NULL PRIMARY KEY, # erste Spalte 
    c_name VARCHAR(100) NOT NULL,
    ticker VARCHAR(10) NOT NULL,
    sector VARCHAR(100) NOT NULL,
    industry VARCHAR(100) NOT NULL,
    no_years INT NOT NULL,
    ranking INT NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    yield DECIMAL(6,4) NOT NULL,
    dividend DECIMAL(6,4) NOT NULL,
    payouts INT NOT NULL,
    annualized DECIMAL(4,2) NOT NULL
     
);

-- TAB Schema anzeigen
DESC ccc_list;

/* Parsen & Einlesen der Daten */
LOAD DATA LOCAL INFILE "05_SQL_SELECT_stocks/data/ccc_dez_2019.csv"
INTO TABLE ccc_list
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM ccc_list;





