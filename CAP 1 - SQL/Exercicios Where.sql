#Exercicio 1
SELECT first_name,last_name,email
FROM customer
WHERE first_name = 'MARIA';

#Exercicio 2
SELECT title,rental_duration
FROM film
WHERE rental_duration > 5
ORDER BY rental_duration DESC;

#Exercicio 3
SELECT payment_id,customer_id,amount
FROM payment
WHERE amount = 2.99
ORDER BY payment_id ASC;