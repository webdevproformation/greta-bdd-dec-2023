-- je souhaite modifier la valeur de l'age de Céline
-- elle a dans la base de donnée 40 ans
-- => 42 

UPDATE eleves 
SET age = 42 
-- !!! attention si vous réalisez requête UPDATE SANS la clause WHERE 
-- vous allez modifier l'age de toutes les lignes de la table eleves 

UPDATE eleves 
SET age = 42 
WHERE nom = "Céline" ; 

SELECT * FROM eleves ;

UPDATE eleves 
SET age = 65 
WHERE nom = "Pierre" ;

UPDATE eleves 
SET age = 30
WHERE id = 7 ; 

--- il est possible de modifier plusieurs informations sur une ligne 
-- modifier le nom et modifier l'age

UPDATE eleves
SET nom = "Benoit" , age = 15 
WHERE id = 2 ;


SELECT * FROM eleves ;

-- modifier l'age de Pierre et Zorro 
-- désormais ils ont 30 

UPDATE eleves
SET age = 30
WHERE id = 4 OR id = 5 ;

UPDATE eleves
SET age = 60
WHERE id BETWEEN 4 AND 8 ;

UPDATE eleves
SET age = 30
WHERE id IN ( 4 , 5 ) ;