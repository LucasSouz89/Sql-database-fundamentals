USE sakila;
#Exercicio 1
SELECT title,
replacement_cost,
replacement_cost - (replacement_cost *0.10) AS new_replacement_cost
FROM film
ORDER BY new_replacement_cost ASC;
#Exercicio 2
SELECT payment_id,
amount,
amount/2 AS discounted_amount
FROM payment
ORDER BY discounted_amount ASC;

#Exercicio 3
SELECT title,
rental_rate,
rental_rate * 5.5 AS price_in_custom_currency
FROM FILM
WHERE rental_rate >= 2.99
ORDER BY rental_rate ASC;