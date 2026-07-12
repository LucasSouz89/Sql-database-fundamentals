#Exercicio 1
SELECT a.actor_id AS ID, COUNT(fa.actor_id) AS Participações
FROM actor a
JOIN film_actor fa USING(actor_id)
GROUP BY actor_id
HAVING COUNT(fa.actor_id) > 30
ORDER BY Participações;
#Exercicio 2
SELECT fc.category_id AS ID,AVG(f.length) AS Média
FROM film_category fc
JOIN film f USING(film_id)
GROUP BY category_id
HAVING AVG(f.length) < 115
ORDER BY Média DESC;

#Exercicio 3
SELECT c.customer_id AS ID, COUNT(p.amount) AS Compras
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY customer_id
HAVING Compras < 20
ORDER BY Compras ASC;