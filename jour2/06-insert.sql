CREATE TABLE eleves (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(200) NOT NULL ,
    age TINYINT DEFAULT 0 ,
    dt_creation DATETIME 
) ;

-- pour la colonne id => on ne la met pas dans les colonnes de la première parenthèse => id NULL => SQLITE qui va déterminer la valeur d'id 
INSERT INTO eleves 
( nom , age , dt_creation)
VALUES
(  "Alain" , 22 , "2023-12-15 15:46:10"  ),
(  "Benois" , 12 , CURRENT_TIMESTAMP  ),
(  "Céline" , 40 , "2023-12-15"  ) ; 


SELECT * FROM eleves ; 
