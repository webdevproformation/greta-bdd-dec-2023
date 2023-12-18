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

-- créer une requête SELECT qui récupère l'id des articles / auteur / nb_commentaires / updated_at
-- renommer la colonne nb_commentaire en nombre commentaires
-- afficher les valeurs des dates en format français jj/mm/

SELECT 
    id , 
    auteur , 
    nb_commentaires AS `nombre commentaires` , 
    strftime("le %d/%m/%Y" , updated_at ) AS `mis à jour le :`,
    strftime("le %d/%m/%Y" , created_at ) AS `créer le :`
FROM articles ;

-- réduire le nombre de ligne dans votre SELECT 
-- filtre via la clause WHERE

-- je veux afficher id et nb_likes pour les lignes ayant un nombre < 10

SELECT id , nb_like
FROM articles 
WHERE nb_like < 10 ;


-- ENTRE 10 et 100 like

SELECT id , nb_like
FROM articles 
WHERE nb_like >= 10  AND nb_like <= 100 ;


SELECT id , nb_like
FROM articles 
WHERE nb_like BETWEEN 10 AND 100 ;

-- je veux récupérer tous les articles mis à jour en septembre 2023

SELECT id , nb_like , strftime("%m/%Y" , updated_at)
FROM articles 
WHERE updated_at BETWEEN "2023-09-01" AND "2023-09-30";

-- récupérer tous les articles qui sont rédigés par un pierre 

SELECT id , title , auteur
FROM articles 
WHERE auteur LIKE "%pierre%" ; 
-- 

-- cas pratique
-- récupérer sur tous les articles 
-- id titre is_active auteur  (4 colonnes)
-- renommer la colonne is_active avec status
-- filtrer les lignes 
-- uniquement tous les articles actif is_active = 1 ET 
-- créer en Aout 2023

SELECT 
    id, 
    title, 
    is_active AS `status` , 
    auteur 
FROM articles 
WHERE is_active = 1 AND
      created_at BETWEEN "2023-08-01" AND "2023-08-31";


SELECT 
    id, 
    title, 
    is_active AS `status` , 
    auteur 
FROM articles 
WHERE is_active = 1 AND
      strftime("%m", created_at) = "08" ;


-- ORDER BY 

-- permet de trier les résultats avec un ordre

-- récupérer les articles ayant le + de like en ordre décroissant

SELECT title , nb_like
FROM articles 
ORDER BY nb_like DESC ; -- DESC => plus grand au plus petit 


SELECT title , nb_commentaires
FROM articles 
ORDER BY nb_commentaires ASC ; -- ASC plus petit au plus grand

SELECT title , auteur 
FROM articles
ORDER BY auteur DESC ; -- É Z => A


SELECT title , auteur , nb_like 
FROM articles
ORDER BY auteur DESC , nb_like ASC ;  -- É Z => A (auteur) ET nb like plus petit au grand

-- cas pratique :
-- récupérer tous les articles
-- id , titre, auteur , nb_like, is_active
-- filtrer toutes les articles créer en Septembre 2023 par des auteurs dont le nom contient la lettre c
-- trier par ordre décroissant de nb_like (plus grand - au plus petit)