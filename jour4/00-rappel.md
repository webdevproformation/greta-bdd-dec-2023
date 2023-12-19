
=> la dernière Commande du CRUD 
=> SELECT (elle permet de récupérer des informations)

SELECT col , col ,
       chiffre + 1 ,
       strftime("%Y" , dt_creation) ,
       prenom || nom  AS `nom complet`
FROM etudiant

WHERE condition => filtrage
     col1 = "bonjour" AND
     titre LIKE "%c%" AND -- contient la lettre c 
     titre LIKE "c%" AND -- commence par c 
     titre LIKE "%c" AND -- fin par c 
     dt_creation BETWEEN "2021-01-01" AND "2021-12-31"
ORDER BY nom_col ASC, (petit au plus grand)
         nom_co2 DESC (plus grand au plus petit / Z => A)
LIMIT 5 ; -- clause qui est exécutée après le WHERE
          -- si le WHERE retourne 15 lignes => 5 premières lignes du résultat 

=> https://sqlite.org/lang_select.html



javascript html css 

SELECT ...
FROM table
WHERE titre LIKE "%javascript%" OR titre LIKE "%html%" OR titre LIKE "%css%" OR contenu LIKE "%javascript%"

-- cas particulier SELECT => utiliser la fonction COUNT(*) sur le requête
-- COUNT() est une fonction d'agrégation ( tableau croisé dynamique)

SELECT date , COUNT(*)
FROM table

COUNT(), MIN() , MAX() , AVG() average , SUM() valeur cumulé

SELECT mois , MAX(ca)
FROM table
GROUP BY region  => ventiler par région le MAX

-----
Stockage 
=> éviter la redondance => (place sur le disque dur )
=> cohérence 

=> relation
=> clé étrangère => colonne qui fait référence à la clé primaire d'une autre table 

CREATE TABLE fruit(
    id INTEGER PRIMARY AUTOINCREMENT,
    nom 
    prix
    poids
    description
    image 
);

CREATE TABLE nom_table (
    id_fruit INTEGER ,
    FOREIGN KEY (id_fruit) REFERENCES fruit(id)
)

--- 
étape 2
récupérer les informations => JOINTURE 
le fait d'utiliser des informations qui sont stockées dans plusieurs tables 

SELECT commande.id , fruit.nom , fruit.prix
FROM commande
JOIN fruit
ON fruit.id = commande.id_fruit

SELECT commande.id , fruit.nom , fruit.prix
FROM fruit
JOIN commande
ON  commande.id_fruit = fruit.id 


cas pratique client préféré vient vous voir avec le fichier excel suivant

fichier de dépenses

id | montant | nom     | adresse
1     100       MacDO    10 rue de Paris
2     50        Kebab    30 rue de Lille
3     20        MacDO    10 rue de Paris
4     5         MacDO    10 rue de Paris


=> concept (entité / relation / table)

depense
- #id 
- montant

1,1

relation (comment les restaurants) => REALISER => oneToMany - 1,n

0,n

restaurant
- #id
- nom 
- adresse

=> attribut / colonne => caractéristiques de la table / relation

// oneToMany clé du père (n) rentre dans le fils (1)
// créer une clé étrangère dans la table depense

CREATE TABLE restaurant (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(10) NOT NULL ,
    adresse VARCHAR(255)
);

CREATE TABLE depense (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    montant DECIMAL ,
    id_restaurant INTEGER ,
    FOREIGN KEY (id_restaurant) REFERENCES restaurant(id)
);

INSERT INTO restaurant
( nom , adresse )
VALUES
("MacDO", "rue de Paris"),
("Kebab", "rue de Lille");

INSERT INTO depense 
(montant, id_restaurant)
VALUES
(100 , 1),
(50, 2),
(20, 1),
(5, 1);



=> vous devez créer une base de données qui va stocker toutes ces informations de manière optimale (avec le moins de répétition possible)