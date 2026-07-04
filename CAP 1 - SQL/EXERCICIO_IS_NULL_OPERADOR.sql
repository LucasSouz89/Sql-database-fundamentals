#EXERCICIO 1
SELECT first_name,last_name,customer_id
FROM customer
WHERE address_id IS NULL;

#EXERCICIO 2
SELECT title,description
FROM film
WHERE description IS NULL;

#EXERCICIO 3
SELECT * FROM payment
WHERE amount IS NOT NULL
ORDER BY amount DESC;