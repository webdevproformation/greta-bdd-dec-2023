# créer des tables 

maintenant que l'on sait créer des tables nous allons nous intéresser aux enregistrements dans la table

```sql
CREATE TABLE -- créer une table

DROP TABLE   -- supprimer une table 

ALTER TABLE  -- modifier une table (uniquement sur MySQL)
```

## manipuler les enregistrements dans une table

- CREATE => ajouter des lignes (enregistrement)
- READ   => lire / récupérer des informations dans la table
- UPDATE  => Mis à jour sur un ou plusieurs informations dans un table 
- DELETE  => supprimer une ou plusieurs lignes dans une table 

### CREATE 

pour ajouter une nouvelle ligne d'enregistrement dans une table existant 

```sql 
INSERT INTO nom_table
( nom , dt_creation )
VALUES
( "Alain" , "2023-12-15" );
```

### READ 

récupérer des informations dans une table

```sql 
SELECT col1, col2 ...
FROM nom_table 
JOIN nom_table_2
ON nom_table.col = nom_table_2.col
WHERE ....
LIMIT ....
```

### UPDATE 

modifier une ou plusieurs informations stockées dans une ou plusieurs lignes d'une table 

```sql
UPDATE nom_table
SET col = "nouvel info" , col = 1
WHERE id = 1 ;
```

### DELETE

vous supprimez une ligne d'enregistrement  
attention on ne peut pas supprimer une colonne avec cette requête

```sql
DELETE FROM nom_table
WHERE id = 1 ; 
```

remarque : si vous voulez supprimer une colonne d'une table 

```sql
ALTER TABLE DROP COLUMN nom_colonne ; 
```


--- 

