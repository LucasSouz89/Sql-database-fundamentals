#LISTA FACIL
#1
SELECT title,rental_rate
FROM film
WHERE length> (
    SELECT AVG(length)
    FROM film)
ORDER BY length DESC;
#2
SELECT first_name,LENGTH(first_name) AS tamanho
FROM actor
WHERE LENGTH(first_name) > (
    SELECT AVG(LENGTH(first_name))
    FROM actor 
)
ORDER BY tamanho DESC;
#3
SELECT f.title
FROM film f
JOIN film_category fc USING(film_id)
JOIN category c USING(category_id)
WHERE c.name IN (
    SELECT name
    FROM category
    WHERE name = 'Horror'
)
ORDER BY f.title ASC;
#4
SELECT payment_id,amount
FROM payment
WHERE amount > (
    SELECT AVG(amount)
    FROM payment)
ORDER BY amount DESC;
#5
SELECT c.city
FROM city c
JOIN country co USING(country_id)
WHERE co.country_id IN (
    SELECT country_id
    FROM country
    WHERE country LIKE 'Brazil'
)
ORDER BY c.city ASC;
#6
SELECT f.title
FROM film f
WHERE f.film_id NOT IN (
    SELECT film_id
    FROM inventory
);
#7
SELECT first_name,last_name
FROM customer
WHERE store_id = (
    SELECT store_id
    FROM store
    WHERE store_id = 1
);
#8
SELECT title,length
FROM film
WHERE length = (
    SELECT MAX(length)
    FROM film
);
#9
SELECT actor_id,first_name
FROM actor
WHERE actor_id NOT IN (
    SELECT actor_id
    FROM film_actor)
;
#10
SELECT title,release_year
FROM film
WHERE release_year = (
    SELECT MAX(release_year)
    FROM film);

#Lista intermediaria
#1
SELECT a.first_name, COUNT(fa.actor_id) AS participacoes
FROM actor a
JOIN film_actor fa USING(actor_id)
GROUP BY a.first_name
HAVING participacoes > (
    SELECT AVG(CONTAGEM)
    FROM (
        SELECT COUNT(actor_id) AS CONTAGEM
        FROM film_actor
        GROUP BY actor_id) 
        AS subconsulta);
#2
SELECT s.store_id, COUNT(c.customer_id) as QTD
FROM store s
JOIN customer c USING(store_id)
GROUP BY s.store_id
HAVING QTD > (
    SELECT AVG(CONT)
    FROM(
        SELECT COUNT(customer_id) AS CONT
        FROM customer
        GROUP BY store_id
    )AS subcosulta
);
#3
SELECT c.customer_id AS ID,SUM(p.amount) AS TOTAL
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY c.customer_id
HAVING TOTAL > (
    SELECT AVG(SOMA)
    FROM (
        SELECT SUM(amount) AS SOMA
        FROM payment
        GROUP BY customer_id) AS subconsulta
        );
#4
SELECT a.first_name,COUNT(fa.actor_id) AS Participacao
FROM actor a
JOIN film_actor fa USING(actor_id)
GROUP BY a.actor_id
HAVING Participacao < (
    SELECT AVG(CONT)
    FROM (
        SELECT COUNT(actor_id) AS CONT
        FROM film_actor
        GROUP BY actor_id
    ) AS subconsulta
);
#5
SELECT c.name,COUNT(fc.category_id) as Quantidade
FROM category c
JOIN film_category fc USING(category_id)
GROUP BY name
HAVING Quantidade > (
    SELECT AVG(Cont)
    FROM (
        SELECT COUNT(category_id) AS Cont
        FROM film_category
        GROUP BY category_id
    ) as subconsulta
);
#6
SELECT c.customer_id,SUM(p.amount) AS PAGAMENTOS
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id
HAVING PAGAMENTOS > (
    SELECT AVG(total)
    FROM(
        SELECT SUM(amount) as total
        FROM payment
        GROUP BY customer_id
    ) AS subquery
)
ORDER BY PAGAMENTOS DESC;
#7
SELECT f.title,c.name,f.rental_rate
FROM film f
JOIN film_category fc USING(film_id)
JOIN category c USING(category_id)
WHERE f.rental_rate > (
    SELECT AVG(f2.rental_rate)
    FROM film f2
    JOIN film_category fc2 USING (film_id)
    WHERE fc2.category_id = c.category_id
);