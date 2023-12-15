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

-- cas pratique 
-- créer une table articles 
-- contient 6 colonnes 
-- titre texte maximum de 255 lettres OBLIGATOIRE
-- contenu texte maximum de 60000 lettres si vide mettre le texte par défaut "à remplir"
-- dt_creation date et heure par défaut date et heure de maintenant 
-- categorie texte de maximum 20 lettres par défaut texte "javascript" 
-- auteur texte de 10 lettres facultatif
-- nbLike chiffre entier maximum de 4 milliards

CREATE TABLE articles (
    titre VARCHAR(255) NOT NULL , 
    contenu TEXT DEFAULT "à remplir" ,
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP ,
    categorie VARCHAR(20) DEFAULT "javascript" ,
    auteur VARCHAR(10) ,
    nbLike INT 
);

-- colonne => clé primaire 
-- technique que l'on rajoute à nos tables 
-- son role est de permettre de trouver / distinguer 
-- une ligne dans la table SANS AUCUNE AMBIGUITE 

-- contient des chiffres qui vont augmenter de + 1 
-- à chaque nouvelle ligne dans la table 
-- vous ne pouvez pas avoir deux fois la même valeur 

-- une table peut contenir soit 0 soit 1 colonne de type clé primaire 
-- vous ne pouvez pas avoir deux colonnes ou plus de clé primaire 


CREATE TABLE formation (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(30) NOT NULL ,
    duree TINYINT DEFAULT 1 ,
    prix DECIMAL DEFAULT 0 ,
    dt_creation DATE DEFAULT CURRENT_DATE
);

-- pour SQLITE id INTEGER PRIMARY KEY AUTOINCREMENT ,
-- pour mySQL  id INT     PRIMARY KEY AUTO_INCREMENT ,

-- PRIMARY KEY => clé primaire 
-- AUTOINCREMENT => le SGBD qui va faire augmenter de + 1 
-- qui va être ajouté par le SGBD 

-- https://sqlite.org/lang_createtable.html


-- cas pratique 
-- créer la table exo2
-- cette table contient 5 colonnes
-- id clé primaire
-- duree chiffre entier maximum de 255
-- updated_at date et jour par défaut maintenant
-- commentaire texte maximum de 65000 lettres OBLIGATOIRE
-- auteur texte maximum de 10 lettres facultatif

CREATE TABLE exo2 (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    duree TINYINT ,
    updated_at DATE DEFAULT CURRENT_DATE ,
    commentaire TEXT NOT NULL ,
    auteur VARCHAR(10)
);
