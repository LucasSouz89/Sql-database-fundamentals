#EXERCICIO 1
SELECT title,rental_rate
FROM film
WHERE rental_rate BETWEEN 0.99 AND 4.99
ORDER BY rental_rate ASC;

#EXERCICIO 2
SELECT payment_id,amount,payment_date
FROM payment
WHERE payment_date NOT BETWEEN '2007-02-01' AND '2007-02-28'
ORDER BY payment_date ASC;

#EXERCICIO 3
SELECT * FROM customer
WHERE customer_id BETWEEN 50 AND 100
ORDER BY customer_id DESC;