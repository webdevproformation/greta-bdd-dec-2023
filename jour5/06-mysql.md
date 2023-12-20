# Attention

il ne faut pas confondre 

barre d'adresse http://192.168.1.237/phpmyadmin

- root
- userpass

n'existe pas dans SQLITE par contre qui OBLIGATOIRE pour travailler avec MySQL Mariadb 

pour accéder aux enregistrements dans une base de données MySQl, vous devez AU PREALABLE et OBLIGATOIREMENT vous être connecté (login / password) pour pouvoir effectuer 

par défaut toutes les bases de données MySQL 
dispose d'un profil root (racine)
compte spécial accès à toutes les tables / base 

## compte super admin => utilisé ce compte pour apprendre

- root
- userpass

=> acces global à tout 

## compte dédié à une base  => utilisé lors de la mise en production 

- dbuser
- userpass

=> juste accès à la base dbname ET certaine commande SQL ne sont pas disponibles CREATE DATABASE 


Attention phpMyAdmin est un site internet qui communique avec un logiciel qui s'appelle mySQL 

créer une base de données

-- créer une base de données

CREATE DATABASE demo ; 

-- supprimer une base 

DROP DATABASE demo ;

=> au manière de créer une base de données
=> utiliser le formulaire de création de base de données 

- nom pour la base
- interclassement utf8mb4_general_ci
- clique sur le bouton créer 

utf8 => comment l'ordinateur va stocker les caractères sur le disque dur (le nombre de bit en fonction des lettres à stocker)
a => 8 bits
é => 9 bits

dans la base de données demo2
je souhaite créer une table  etudiant 
qui contient 3 colonnes :

id clé primaire
nom texte avec un maximum de 20 lettres
age chiffre entier maximum de 255 

USE demo2 ; 

CREATE TABLE etudiant (
    id INT PRIMARY KEY AUTO_INCREMENT , 
    nom VARCHAR(20) ,
    age TINYINT
) ; 

----- 

CREATE TABLE demo2.etudiant (
    id INT PRIMARY KEY AUTO_INCREMENT , 
    nom VARCHAR(20) ,
    age TINYINT
) ; 

-- cas pratique

créer une nouvelle base de données dans votre machine virtuelle 

elle s'appelle exo1

dans la base de données exo1 vous allez créer une table 

elle s'appelle formation, elle contient 4 colonnes 

id clé primaire
duree chiffre entier de maximum 4 milliards
description texte qui contient au maximum de 65 000 caractères 
date_creation date et heure 


