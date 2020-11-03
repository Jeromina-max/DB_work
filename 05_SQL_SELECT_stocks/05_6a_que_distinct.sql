/* DISTINCT */

USE WORK;
system clear;


/*
SELECT 
    sector 
    FROM stocks.ccc_list
    ORDER BY sector ASC 
    LIMIT 100;
    */
    
    -- nur das erste Auftreten von Sektoren
    -- welche VERSCHIEDNE Sektoren gibt es?
    /*
    SELECT 
        DISTINCT sector "Industriesektoren"
    FROM stocks.ccc_list
    ORDER BY sector ASC; 
    
    -- welche VERSCHIEDNEN Branchen gibt es?
    SELECT 
        DISTINCT industry AS "Branchen"
    FROM stocks.ccc_list
    ORDER BY industry ASC; 
    */
    
     -- welche VERSCHIEDNEN Auszahlungs-Rhythmen gibt es?
    SELECT 
        DISTINCT payouts AS "Auszahlungen/Jahr"
    FROM stocks.ccc_list
    ORDER BY payouts DESC; 
    
    
    
    
    
    
    
    
    