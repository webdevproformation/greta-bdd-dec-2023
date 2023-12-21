# SGBD R

- nous avons découvert les bases de données via SQLITE (système très léger à mettre en oeuvre)
- découvert MySQL MariaDB => plus lourd à installer 
    - Machine (serveur)
    - OS (linux Ubuntu)
    - MySQL MariaDB 

Plusieurs manières de créer tout le nécessaire pour travailler avec une base de données MySQL =>

XAMPP / MAMP / WAMP (pack de logiciels) 
 - Apache 
 - MySQL
 - PHP 

Vagrant + VirtualBox 

## Vagrant 

- logiciel en ligne de commande (comme git)
- qui fonctionne quelquesoit le terminal (cmd / git bash / powershell)
- personnalisation possible 
- logiciels fonctionnent mieux sur un terminal sur l'autre / voire qui fonctionne sur certains terminaux et pas d'autres (ls / dir)

- décrire des machines virtuelles via une fichier `Vagrantfile` 

- vagrant up => créer la machine si elle n'existe pas et la démarrer
- vagrant halt => stopper la machine virtuelle
- vagrant ssh => voir le contenu d'une machine virtuelle
- vagrant status => voir état de fonctionne de la machine virtuelle
- vagrant destroy => stopper et supprimer la machine virtuelle
- vagrant init => créer un fichier `Vagrantfile`  avec beaucoup de commentaires 
- vagrant up --provision => relancer le processus de provision de la machine (sans réinistaller l'OS)

=> DevOps 

=> travaillé sur une document word sur un PC 1 => version 2015
=> prend le fichier word => sur autre ordinateur version 2003 => le fichier ne marche pas 

=> Compatibilité !!!! 

http://192.168.1.237/phpmyadmin

- il faut d'abord donner un login / password 
- il existe des niveaux de profil dans mySQL => Root / profil de base 


- CREATE DATABASE nom_base ; 

- USE nom_base ; 

- CREATE TABLE nom_table (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(200) 
)

CREATE TABLE nom_table2 (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(200) 
)

CREATE TABLE nom_table3 (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(200) 
)

------ 

$_POST

CREATE TABLE nom_base.nom_table (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(200) 
)

CREATE TABLE nom_base.nom_table2 (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(200) 
)


CREATE TABLE nom_base.nom_table3 (
    id INT PRIMARY KEY AUTO_INCREMENT ,
    nom VARCHAR(200) 
)