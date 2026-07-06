#EXERCICIO 1
SELECT title,length
FROM film
WHERE length >= 180
ORDER BY length ASC;
#EXERCICIO 2
SELECT title,rental_rate
FROM film
WHERE rental_rate != 0.99
ORDER BY rental_rate ASC;
#EXERCICIO 3
SELECT customer_id, first_name,last_name
FROM customer 
WHERE customer_id < 50
ORDER BY customer_id DESC;