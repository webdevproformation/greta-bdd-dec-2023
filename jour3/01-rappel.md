
=> tout projet informatique
=> regrouper les données dans une seule et même entité
=> tableau 
=> dès les années 70 => concepts Base de données 

=> base données => super tableau 
=> Base de données Relationnelle // NoSQL 
=> base de données relationnelle

=> table => colonne / ligne 
CREATE TABLE nom_table (
    col1 type contrainte
    col2 type
    col3 type 
);

text => CHAR / VARCHAR (<= 255 caractères) / TEXT  (65000 lettres)
chiffre TINYINT (0 255) /  SMALLINT / INT (4 milliards)
        DECIMAL 
        BOOLEAN
date => DATETIME / DATE / TIME 

NOT NULL 

DEFAULT CURRENT_TIMESTAMP 

clé primaire => colonne essentielle lorsque l'on créer des tables
=> permet de sélectionner dans aucun ambiguité une ligne dans la table  

id INTEGER PRIMARY KEY AUTOINCREMENT 

----- 

CRUD => 4 opérations de base sur une entité d'une système informatique 

CREATE => INSERT INTO nom_table (col, col) VALUES ("a", "b")

READ => récupérer des données depuis une table ou plusieurs tables
SELECT col, col 
FROM table 
JOIN table2 // jointure 
ON table.id = table2.id
WHERE 
ORDER
LIMIT

SELECT * FROM table ; 

UPDATE => 
UPDATE nom_table 
SET col= "nouvelle valeur" , col2 = 10
WHERE id = 1 ; 

DELETE => supprimer une ligne complète 
DELETE FROM table 
WHERE id = 1 ;









