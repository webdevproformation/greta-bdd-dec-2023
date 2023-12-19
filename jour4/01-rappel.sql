SELECT is_active , COUNT(*)
FROM articles ;

SELECT is_active , COUNT(*)
FROM articles 
GROUP BY is_active ;

SELECT is_active , id
FROM articles ;