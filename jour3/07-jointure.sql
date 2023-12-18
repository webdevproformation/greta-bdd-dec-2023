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

SELECT e.nom , m.nom 
FROM etudiant AS e 
JOIN etudiant_matiere AS em 
ON e.id = em.id_etudiant 
JOIN matiere  AS m 
on m.id = em.id_matiere ; 