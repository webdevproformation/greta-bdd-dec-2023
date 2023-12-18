-- 06-relation.sql

class 

id_class | nom | | teléphone | annee naissance  | matière | dt_debut | dt_fin  
1          Alain | 06        |    1980          |  PHP      01/01      28/02
2          Céline| 02        |    1990          |  PHP      01/01      28/02
3          Denis | 03        |    2000          |  JS       01/02      28/02
4          Zorro | 04        |    2010          |  PHP      01/01      30/03
5          Alain | 06        |     1980         |  Node     01/04      20/04


=> essayer d'éviter les répétitions / redondance 
ce que l'on va faire c'est de découper la table en plusieurs sous tables 

dans la table class on a fusionné 2 concepts 

Etudiant  => va pouvoir suivre plusieurs matières 

id_etudiant  | nom  | téléphone   | annee naissance
1              Alain | 01            1980
2              Céline |
3              Denis  |
4               Zorro |

Matière 

id_matiere  | nom 
1             PHP
2             JS
3             Node


relation etudiant - matiere 
1 1 01/01      28/02
2 1 01/01      28/02
3 2 01/02      28/02
4 1 01/01      30/03
1 3 01/04      20/04

FK => clé étrangères => numéro fait référence à une clé sur une autre table 


