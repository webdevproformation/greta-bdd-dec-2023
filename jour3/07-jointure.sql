-- Jointure c'est le fait d'utiliser des informations
-- qui sont stockées sur plusieurs tables

-- la relation => STOCKER (étape avant)

-- je veux avoir la liste des étudiants qui font du PHP 
-- ???? 

SELECT etudiant.nom , matiere.nom 
FROM etudiant -- table
JOIN etudiant_matiere -- table 
ON etudiant.id = etudiant_matiere.id_etudiant 
-- id clé primaire de etudiant 
-- id_etudiant clé étrangère qui est associée id clé primaire de etudiant 
JOIN matiere  -- table 
on matiere.id = etudiant_matiere.id_matiere ;


-- jointure entre plusieurs tables alias de Table 
-- AS sur les tables

-- relation manyToMany
SELECT e.nom , m.nom 
FROM etudiant AS e 
JOIN etudiant_matiere AS em 
ON e.id = em.id_etudiant 
JOIN matiere  AS m 
on m.id = em.id_matiere ; 

-- cas pratique 
-- many
-- ToMany 
-- on vous donne un fichier excel avec les données suivantes 

id | nom client | nom salle | ville où est située la salle 
1     Pierre       Verte       Paris
2     Pierre       Jaune       Paris
3     Alain        Verte       Paris
4     Céline       Rose        Lyon
5     Pierre       Rose        Lyon

Question 1 => combien de concept === combien de table 

2 concepts salle (nom + ville) 
           client (nom)

Question 2 => quel est la relation entre les concepts ? tables ??? 

        salle peut être réservée par plusieurs client 
        client peut réserver plusieurs salles

        manyToMany

        => salle_client
          id_salle => FK
          id_client => FK 

Question 3 => Créer en SQL les tables avec des CREATE TABLE Clé primaire / clé secondaire

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS salle_client ;

DROP TABLE IF EXISTS salle ;

CREATE TABLE salle (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(10)  NOT NULL ,
    ville VARCHAR(10) NOT NULL
);

DROP TABLE IF EXISTS client ;

CREATE TABLE client (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(10)  NOT NULL 
);



CREATE TABLE salle_client (
    id_client INTEGER ,
    id_salle INTEGER ,
    FOREIGN KEY (id_client)  REFERENCES client(id),
    FOREIGN KEY (id_salle)  REFERENCES salle(id),
    PRIMARY KEY (id_client , id_salle)
);

-- Question 4 => INSERT de DOnnées (dans un certain ordre)

INSERT INTO client 
(nom)
VALUES
("Pierre"),
("Alain"),
("Céline");


INSERT INTO salle 
(nom , ville)
VALUES
("Verte" , "Paris"),
("Jaune" , "Paris"),
("Rose" , "Lyon");

PRAGMA foreign_keys = ON;

INSERT INTO salle_client
(id_client , id_salle)
VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 3),
(1, 3);

SELECT  c.nom , s.nom , s.ville 
FROM client AS c 
JOIN salle_client AS sc 
ON sc.id_client = c.id 
JOIN salle AS s 
ON sc.id_salle = s.id ;


