#EXERCICIO 1
SELECT payment_id,amount
FROM payment
ORDER BY amount DESC
LIMIT 5;

#EXERCICIO 2
SELECT customer_id,first_name,last_name
FROM customer
ORDER BY customer_id ASC
LIMIT 20,10;

#EXERCICIO 3
SELECT film_id,title
FROM film
ORDER BY film_id DESC
LIMIT 10;