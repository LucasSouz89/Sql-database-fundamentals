USE sakila;
#EXERCICIO 1
SELECT title,
rental_rate,
rental_rate * 3 AS valor_3_copias
FROM film
ORDER BY valor_3_copias DESC;
#EXERCICIO 2
SELECT title,
rental_rate - 0.50 AS preco_promocional
FROM film
WHERE rental_rate - 0.50 < 2.00;
#EXERCICIO 3
SELECT title,
length,
length/60  AS duracao_horas
FROM film
ORDER BY duracao_horas;
