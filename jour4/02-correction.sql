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


SELECT restaurant.nom , depense.montant 
FROM depense
JOIN restaurant
ON depense.id_restaurant = restaurant.id ;