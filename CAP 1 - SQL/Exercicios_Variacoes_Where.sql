using sakila;

#Exercicio 1
SELECT AVG(rental_rate) AS media_preco_aluguel
FROM film;

#Exercicio 2
SELECT COUNT(payment_id) AS total_transacoes
FROM payment;

#Exercicio 3
SELECT SUM(amount) AS faturamento_total 
FROM payment
WHERE customer_id < 10;