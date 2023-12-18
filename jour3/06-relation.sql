-- 06-relation.sql

class 

id_class | nom | | teléphone | annee naissance  | matière | dt_debut | dt_fin  
1          Alain | 06        |    1980          |  PHP      01/01      28/02
2          Céline| 02        |    1990          |  PHP      01/01      28/02
3          Denis | 03        |    2000          |  JS       01/02      28/02
4          Zorro | 04        |    2010          |  PHP      01/01      30/03
5          Alain | 06        |     1980         |  Node     01/04      20/04


=> essayer d'éviter les répétitions / redondance 
ce que l'on va faire c'est de découper la table en plusieurs sous tables 

dans la table class on a fusionné 2 concepts 

Etudiant  => va pouvoir suivre plusieurs matières 

id_etudiant  | nom  | téléphone   | annee naissance
1              Alain | 01            1980
2              Céline |
3              Denis  |
4               Zorro |

Matière 

id_matiere  | nom 
1             PHP
2             JS
3             Node


relation etudiant - matiere 
1 1 01/01      28/02
2 1 01/01      28/02
3 2 01/02      28/02
4 1 01/01      30/03
1 3 01/04      20/04

FK => clé étrangères => numéro fait référence à une clé sur une autre table 


=> transformer en vraie table dans un vrai base de données

=> 1 d'abord il faut créer les tables qui ont les clés primaires 
etudiant
matiere

=> 2 créer la table qui contient les clés étrangères 
etudiant_matiere

DROP TABLE IF EXISTS etudiant ;

CREATE TABLE etudiant(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS matiere ;

CREATE TABLE matiere (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(200) NOT NULL
);

DROP TABLE IF EXISTS etudiant_matiere ;

CREATE TABLE etudiant_matiere (
    id_etudiant INTEGER ,
    id_matiere INTEGER ,
    dt_debut DATETIME ,
    dt_fin DATETIME ,
    FOREIGN KEY (id_etudiant) REFERENCES etudiant(id),
    FOREIGN KEY (id_matiere) REFERENCES matiere(id)
);

-- attention l'ordre d'abord créer les tables avec clé primaires 
-- 

INSERT INTO etudiant 
(nom)
VALUES
("Alain"),
("Céline"), 
("Zorro") ;

INSERT INTO matiere 
(nom)
VALUES
("PHP"),
("JS"),
("Node");

-- veuillez faire un test
-- vous voulez ajouter dans la table qui fait la relation
-- étudiant numéro 4 (existe pas ) avec la matière numéro 1 PHP
-- Erreur attention contrainte clé étrangère 

-- permet de vérifier que l'etudiant existant avant insertion (spécifique à SQLITE)
PRAGMA foreign_keys = ON;

INSERT INTO etudiant_matiere 
(id_etudiant , id_matiere , dt_debut , dt_fin)
VALUES 
(4, 1 , CURRENT_TIMESTAMP , CURRENT_TIMESTAMP);


---- vrai exemple qui fonctionne

PRAGMA foreign_keys = ON;

INSERT INTO etudiant_matiere 
(id_etudiant , id_matiere , dt_debut , dt_fin)
VALUES 
(1, 1 , "2023-01-01" , "2023-02-28"),
(2, 1 , "2023-01-01" , "2023-02-28"),
(3, 2 , "2023-02-01" , "2023-02-28"),
(1, 3 , "2023-02-01" , "2023-02-28") ;


si je supprime Alain => DELETE FROM etudiant WHERE id = 1 ; 

