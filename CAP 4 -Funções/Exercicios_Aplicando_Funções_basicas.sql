#Exercicio 1
SELECT SUM(amount) AS SOMA,COUNT(amount) AS QUANTIDADE
FROM payment;

#EXERCICIO 2
SELECT MAX(length) AS 'Duração maxima',MIN(length) AS 'Duração minima',AVG(length) AS 'Duração média'
FROM film;

#Exercicio 3
SELECT MAX(amount) 
FROM payment
WHERE customer_id = 1;

#Exercicio 4
SELECT category_id, COUNT(*) AS Quantidade
FROM film_category
GROUP BY category_id; 