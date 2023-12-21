# phpMyAdmin

http://192.168.1.237/phpmyadmin

## compte pour accéder à phpMyAdmin

compte root 
- login : root
- password : userpass (il est visible dans le fichier .sh)

## présentation 

zone latérale à gauche => 
barre de menu (accéder à la home / déconnexion)

liste des bases de données 
- vos bases de données + base de données à ne pas toucher comme
    - information_schema
    - mysql
    - performance_schema
    - phpmyadmin
    - sys  
    - 
    - 
mysql => logiciel  (independant)
phpmyadmin => site internet qui permet de créer des requêtes SQL visuellement envoyé à mySQL 
phpmyadmin est site internet écrit en PHP 

pour pouvoir utiliser phpmyadmin il faut au préalable avoir installé PHP 

## Creer des bases de données

CREATE DATABASE .... ;

DROP DATABASE .... ; 

Opération >
- supprimer la base de données
- modifier changer interclassement / changer le nom 

CRUD DATABASE 
CREATE DATABASE .... ;
USE .... ;
DROP suivi d'un CREATE (modifier le nom de la base)
DROP DATABASE

## Créer des tables
CRUD au niveau d'une table 

CREATE TABLE 
DESCRIBE nom_table ;
ALTER TABLE `etudiant` ADD `date_inscription` DATETIME NOT NULL AFTER `age`; -- ajouter une nouvelle colonne
ALTER TABLE `etudiant` DROP `age`; -- supprimer la colonne age
ALTER TABLE `etudiant` CHANGE `date_inscription` `date_inscription` DATE NOT NULL; -- modifier le type de la colonne date_inscription

DROP TABLE => supprimer la table et son contenu
TRUNCATE TABLE => vider le contenu de la table sans toucher à la structure 

Attention si vous avez besoin de créer des relations entre plusieurs tables => attention il faut choisir le moteur de stokage innodb 


## insérer des données
