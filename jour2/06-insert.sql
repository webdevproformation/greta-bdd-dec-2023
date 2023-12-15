CREATE TABLE eleves (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(200) NOT NULL ,
    age TINYINT DEFAULT 0 ,
    dt_creation DATETIME 
) ;

-- pour la colonne id => on ne la met pas dans les colonnes de la première parenthèse => id NULL => SQLITE qui va déterminer la valeur d'id 
INSERT INTO eleves 
( nom , age , dt_creation ) 
VALUES
(  "Alain" , 22 , "2023-12-15 15:46:10"  ),
(  "Benois" , 12 , CURRENT_TIMESTAMP  ),
(  "Céline" , 40 , "2023-12-15"  ) ; 


SELECT * FROM eleves ; 

-- sur la table eleves ajouter les 4 lignes suivantes 

-- Pierre / 40 / maintenant
-- Zorro /  20 / le 1er janvier 2021 à 11h30
-- Marc / 42 / le 31 décembre 2022 à 14h00
-- Pierre / 60 / maintenant

INSERT INTO eleves 
( nom , age , dt_creation  )
VALUES 
("Pierre" , 40 , CURRENT_TIMESTAMP ), 
("Zorro" , 20 , "2021-01-01 11:30:00" ), 
("Marc" , 42 , "2022-12-31 14:00:00" ), 
("Pierre" , 60 , CURRENT_TIMESTAMP ) ;

SELECT * FROM eleves ;