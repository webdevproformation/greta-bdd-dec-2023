Rappel des points abordés hier ??

- modélisation => comment organiser les tables dans une base de données 

- limiter les redondances (rapport place sur le disque / information)
- ne pas avoir des situations où l'information est illogique

réservation (avion) / vol (avion)

MCD  => Conceptuel

Entité (rectangle)
Attribut (dans le corps du rectangle)
Relation ( trait verbe )
Cardinalité 

=> oneToMany => https://www.agil-retrogaming.fr/blog/wp-content/uploads/2015/06/Arrivage_Super_NES.jpg

=> oneToOne => couple heureux

=> manyToMany => location de véhicule 

version Merise / version UML 

----- 

MLD => Logique

3 règles à appliquer (permettre de déterminer les clés primaires / clés secondaire)

=> oneToOne => vous pouvez fusionner les deux tables 

=> oneToMany => clé du père (n) rendre dans le fils (0,1) 

console                     jeu
nom       compatible        nom        
prix                        prix

      1,n             1,1


console                     jeu
id                          id
nom    --------------<       nom        
prix                        prix
                            id_console


=> manyToMany  => il faut ajouter une table entre les deux entités contenant deux clés étrangères clé primaire des deux tables 


client                    vehicule
nom           reserver     modele
num_permis                 prix_journalier
         0,n            0,n

client                location                 vehicule
id  ----------------<  id_client               id
nom                    id_vehicule >---------  modele
num_permis                                     prix_journalier

 
MPD => Physique 

CREATE TABLE nom (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    ....
    ....
);
 
----

Normalisation => technique audit de vos tables 

=> est ce que quelque soit la cellule de mes tables => j'ai information atomique
(valeur atomique) 
=> 1er forme normale 

=> est ce que toutes les colonnes de mes tables dépendentes (totalement) d'une colonne clé primaire dans la table (Dépendance partielle)
=> 2ème forme normale

=> est ce que toutes les colonnes de mes tables non clé primaire dépendent d'une autre colonne ainsi que de la clé primaire (Dépendances Transitives ?? )

=> 3ème forme normale 

