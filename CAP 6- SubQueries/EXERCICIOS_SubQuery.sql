#Lista 1
#EXERCICIO 1
SELECT c.first_name AS Nome,c.last_name AS Sobrenome,COUNT(p.customer_id) AS Quantidade_de_compras
FROM customer c
JOIN payment p USING(customer_id)
WHERE p.amount > (
    SELECT AVG(amount)
    FROM payment )
GROUP BY c.customer_id
ORDER BY Quantidade_de_compras DESC;
#EXERCICIO 2
SELECT title
FROM film 
WHERE film_id NOT IN (SELECT film_id
FROM inventory);
#EXERCICIO 3
SELECT a.first_name,a.last_name,COUNT(fa.actor_id) AS quantidade
FROM actor a
JOIN film_actor fa USING(actor_id)
GROUP BY actor_id
HAVING quantidade > (
    SELECT AVG(contagem)
    FROM(
        SELECT COUNT(*) AS contagem
        FROM film_actor
        GROUP BY actor_id
    ) AS subconsulta
);
#Lista 2
#Exercicio 1
SELECT title,length
FROM film
WHERE length > (
    SELECT AVG(length)
    FROM film)
ORDER BY length DESC;
#Exercicio 2
SELECT c.first_name,COUNT(r.customer_id) AS QTD
FROM rental r
JOIN customer c USING(customer_id)
GROUP BY customer_id
HAVING QTD > (
    SELECT AVG(contagem)
    FROM(
        SELECT COUNT(customer_id) AS contagem
        FROM rental
        GROUP BY customer_id
    ) AS consulta
);
#Exercicio 3
SELECT a.first_name, COUNT(fa.actor_id) AS QTD
FROM actor a
JOIN film_actor fa USING(actor_id)
JOIN film_category fc USING(film_id)
JOIN category c USING(category_id)
GROUP BY a.actor_id
HAVING QTD > (
    SELECT AVG(CONTAGEM)
    FROM (
        SELECT COUNT(fa.actor_id) AS CONTAGEM
        FROM film_actor fa
        JOIN film_category fc USING(film_id)
        JOIN category c USING(category_id)
        WHERE c.name = 'Action'
        GROUP BY fa.actor_id
    ) AS sub_media
)

