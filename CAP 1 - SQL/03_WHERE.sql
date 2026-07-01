#USANDO O WHERE PARA FILTRAR PELO actor_id que seja menor ou igual ao 10
SELECT actor_id,first_name,last_name
FROM actor
WHERE actor_id <= 10
ORDER BY actor_id ASC;