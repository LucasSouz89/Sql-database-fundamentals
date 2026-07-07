#Usando um alias que nada mais é que um apelido para as tabelas
USE sakila;
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.rental_id,
    p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id;