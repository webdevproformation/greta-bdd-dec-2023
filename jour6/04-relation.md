
# SQLITE

CREATE TABLE etudiant(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    id_exo INT NOT NULL ,
    FOREIGN KEY (id_exo) REFERENCES exo(id) 
)

# MySQL MARIADB

CREATE TABLE etudiant(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    id_exo INT NOT NULL ,
    FOREIGN KEY (id_exo) REFERENCES exo(id) ON DELETE CASCADE ON UPDATE CASCADE
)

RESTRICT
SET NULL
CASCADE 

VOUS POUVEZ ajouter des contraintes supplémentaires 

SI je supprime 

exo                                            eleve
id nom                                         id    nom     id_exo
 
1   exo de javascript                           1    Alain     1
2   exo de PHP                                  2    Céline    1



---- 

Sécurité de vos bases de données 

=> identifiants de connexion !!! 
=> attention ne perdre l'identifiant root 

=> DUMP 

=> réaliser un DUMP de la base de données final 
=> une fois que le DUMP est réalisé stocker le fichier .sql dans un dossier dans votre ordinateur 

=> supprimer votre base de donnée final
=> créer une base de donnée vierge final
=> importer => sélectionner le fichier .sql 


creer deux tables

pays
id
nom

salle
id
nom 
id_pays


