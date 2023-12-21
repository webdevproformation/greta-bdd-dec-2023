en utilisant phpMyAdmin 

créer une base de données qui s'appelle final

dans cette base vous allez créer une table exo
cette table contient 6 colonnes 

id clé primaire
nom texte avec un maximum de 30 lettres
description texte maximum de 65000 lettres
active 0 ou 1 
dt_creation date et heure
prix chiffre à virgule 

CRUD au niveau des enregistrements dans une table 

ajouter des données dans la table exo 

INSERT 

relation entre les tables 


CREATE TABLE etudiant(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255) NOT NULL,
    id_exo INT NOT NULL ,
    FOREIGN KEY (id_exo) REFERENCES exo(id) 
)

=> créer la colonne 
=> cliquer sur le bouton index

créer une table a dans la base de données finale
cette table contient 3 colonnes 
id clé primaire
nom texte de maximum 5 lettres
dt_creation date

créer la table b dans la base de données finale 
cette table contient 3 colonnes 
id clé primaire
prix chiffre à virgule qui contient 10 chiffres dont 3 chiffres en dessous de la virgule
id_a clé secondaire qui est associée à la clé primaire de la table a

