-- Jointure c'est le fait d'utiliser des informations
-- qui sont stockées sur plusieurs tables

-- la relation => STOCKER (étape avant)

-- je veux avoir la liste des étudiants qui font du PHP 
-- ???? 

SELECT etudiant.nom , matiere.nom 
FROM etudiant -- table
JOIN etudiant_matiere -- table 
ON etudiant.id = etudiant_matiere.id_etudiant 
-- id clé primaire de etudiant 
-- id_etudiant clé étrangère qui est associée id clé primaire de etudiant 
JOIN matiere  -- table 
on matiere.id = etudiant_matiere.id_matiere ;


-- jointure entre plusieurs tables alias de Table 
-- AS sur les tables

-- relation manyToMany
SELECT e.nom , m.nom 
FROM etudiant AS e 
JOIN etudiant_matiere AS em 
ON e.id = em.id_etudiant 
JOIN matiere  AS m 
on m.id = em.id_matiere ; 

-- cas pratique 
-- oneToMany 
-- on vous donne un fichier excel avec les données suivantes 

id | nom client | nom salle | ville où est située la salle 
1     Pierre       Verte       Paris
2     Pierre       Jaune       Paris
3     Alain        Verte       Paris
4     Céline       Rose        Lyon
5     Pierre       Rose        Lyon

Question 1 => combien de concept === combien de table 
Question 2 => quel est la relation entre les concepts ? tables ??? 

Question 3 => Créer en SQL les tables avec des CREATE TABLE Clé primaire / clé secondaire

Question 4 => INSERT de DOnnées (dans un certain ordre)


