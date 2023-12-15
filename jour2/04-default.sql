DROP TABLE catalogue ;

CREATE TABLE catalogue (
    nom VARCHAR(20) ,
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP ,
    prix DECIMAL DEFAULT 0 ,
    description  TEXT DEFAULT 'aucune description pour l''instant'
);
-- CURRENT_TIMESTAMP
-- CURRENT_DATE
-- CURRENT_TIME 
-- rien ajouter des lignes dans une table 
-- et que vous ne mettez rien => NULL 

-- dans la description des colonnes d'une table
-- il est possible d'ajouter l'interdiction d'avoir la valeur NULL

CREATE TABLE exemple (
      a VARCHAR(20) ,
      b VARCHAR(20) DEFAULT "coucou",
      c VARCHAR(20) NOT NULL 
);

-- NOT NULL => OBLIGATOIRE 
-- DEFAULT si tu ne précises pas => prendre la valeur par défaut 

-- ajouter une première ligne dans la table exemple

--- ajouter une ligne avec des infos dans les 3 colonnes 

INSERT INTO exemple 
( a , b , c )
VALUES
( "toto" , "toto" , "toto"   ) ;

-- oublié d'utiliser la colonne b => DEFAULT => coucou

INSERT INTO exemple 
( a  , c )
VALUES
( "titi" , "titi"    ) ;

-- oublié la colonne a (ni DEFAULT ni NOT NULL) => NULL

INSERT INTO exemple 
( b  , c )
VALUES
( "tutu" , "tutu"    ) ;

-- oublié la colonne c (NOT NULL) => NON je peux pas insérer 

INSERT INTO exemple 
( a , b   )
VALUES
( "toutou" , "toutou"    ) ;
