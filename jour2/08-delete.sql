DELETE FROM eleves
WHERE id = 5 ; 

-- attention ne pas oublier la clause WHERE dans les requêtes DELETE 
-- il n'y a pas de Ctrl Z => DELETE est définitif (il n'y a pas de sauvegarde)

-- si vous supprimez la ligne 5 
-- les id des autres lignes ne sont pas affectées 


SELECT * FROM eleves ;