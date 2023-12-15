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

