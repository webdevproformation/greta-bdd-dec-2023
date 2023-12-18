cas pratique
créer la requête SQL qui permet de supprimer 
les lignes ayant l'id = 6 et l'id = 10 et l'id = 30 

DELETE FROM articles
WHERE id = 6 OR id = 10 OR id = 30 ;

DELETE FROM articles
WHERE id IN ( 6 , 10 , 30 ) ;

-- toutes les lignes entre 5 et 40 
 DELETE FROM articles
WHERE id BETWEEN 5 AND 40 ;

-- SELECT mot clé du langage SQL 
-- permet de récupérer des informations stockées dans des tables 

SELECT * FROM articles ; 
-- ou cliquer sur le triangle dans SQLITE explorer 

-- il est possible de dire quelle colonne on veut récupérer 
-- dans quel ordre

-- titre / auteur / nb_like

SELECT title , auteur , nb_like 
FROM articles ;

-- récupérer les 3 colonnes 


SELECT nb_like , title , auteur 
FROM articles ;

-- vous pouvez choisir l'ordre des colonnes dans votre SELECT
-- attention le SELECT n'a aucun impact sur la structure de la table 

-- récupérer titre, created_at (renommer la colonne => créé le )

SELECT title AS `titre` , created_at AS `créé le`
FROM articles ; 

-- il est possible dans les colonnes d'effectuer des calculs

SELECT nb_like , nb_like + 10 AS `nb like + 10` , nb_like * 1.2 AS `nb like ttc`
FROM articles ; 


SELECT categorie , auteur , auteur || " connait le " || categorie AS `concaténation `
FROM articles ;

SELECT auteur , strftime("le %d/%m/%Y" , created_at ) AS `créer le :` 
FROM articles ;

SELECT created_at
FROM articles ;

-- créer une requête SELECT qui récupère l'id des articles / auteur / nb_commentaire / updated_at
-- renommer la colonne nb_commentaire en nombre commentaires
-- afficher les valeurs des dates en format français jj/mm/aaaa
