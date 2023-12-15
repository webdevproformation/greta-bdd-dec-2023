-- commentaire monoligne 

/*
multi
ligne 
*/

-- pour les bases de données relationnelles
-- pour stocker des données
-- il faut AU PREALABLE créer des tables (à ne pas confondre avec des tableaux)

CREATE TABLE demo (
    prenom VARCHAR(20) ,
    nom VARCHAR(20) 
);

-- requete SQL (demande SGBD)
-- Met les mots clé du langage SQL 
-- en MAJUSCULE 
-- Met les noms des tableaux / colonnes en minuscule
-- SUggestion => bonne pratique 

CREATE TABLE demo(prenom VARCHAR(20),nom VARCHAR(20));

CREATE TABLE toto(
    titi VARCHAR(20) ,
    tutu VARCHAR(10)
);

-- supprimer la table toto

DROP TABLE toto ;

-- cas pratique écrire une requête SQL
-- qui permet de créer la table 
-- etudiant
-- cette table contient 3 colonnes 
-- prenom contient du texte maximum de 30 lettres
-- nom contient du texte maximum de 30 lettres
-- adresse contient du texte maximum de 200 lettres

-- une fois la requête créée => exécuter la requete et la visualiser dans SQLITE explorer

CREATE TABLE etudiant (
    prenom VARCHAR(30) , -- nom_colonne type 
                        -- => permet au sgbd d'allouer 
                        -- l'espace le plus optimal 
                        -- sur le disque dur 
    nom VARCHAR(30) ,
    adresse VARCHAR(200) 
);

-- dans les types que l'on va ajouter Après les noms des colonnes 

-- le texte 
    -- CHAR 0 - 255 (largeur fixe) 
    -- VARCHAR 0 - 255 => titre / prénom / nom 
    -- TEXT 0 et 65000 => contenu d'une présentation
    -- LONGTEXT 0 et 4 milliards => livres 
    -- BLOB 0 et milliard de milliard  => DVD 

-- les chiffres
    -- TINYINT 0 - 255
    -- SMALLINT 0 et 65000
    -- INT  0 et  4 milliards
    -- BIGINT 0 et 18 milliards  milliards
    -- DECIMAL => accepter les chiffres à virgule 
    -- BOOLEAN => 0 ou 1 

-- les dates 
    -- DATE => AAAA-MM-JJ
    -- TIME => HH:MM:SS
    -- DATETIME => AAAA-MM-JJ HH:MM:SS

-- créer une table inscription
-- 5 colonnes 
-- nom texte maximum de 20 lettres
-- email texte maximum de 100 lettres
-- dt_inscription date année mois jour 
-- niveau chiffre entier avec un maximum de 255
-- prix chiffre à virgule 

CREATE TABLE inscription(
    nom VARCHAR(20) ,
    email VARCHAR(100) ,
    dt_inscription DATE ,
    niveau TINYINT ,
    prix DECIMAL
);

-- cas pratique
-- créer la table exo1
-- cette table contient 6 colonnes 
-- nom texte maximum de 150 lettres
-- description texte avec un maximum de 20000 lettres
-- dt_creation date et heure
-- auteur texte maximum de 60 lettres
-- code_barre exactement 12 lettres
-- note chiffre entier maximum de 4 milliards

CREATE TABLE exo1 (
    nom VARCHAR(150),
    description TEXT , 
    dt_creation DATETIME ,
    auteur VARCHAR(60),
    code_barre CHAR(12),
    note INT 
);

--- modifier le type d'une colonne uniquement sur mySQL MariaDB

ALTER TABLE exo1 COLUMN description VARCHAR(200) ;

--- 

DROP TABLE exo1 ; 


