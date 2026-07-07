#FILTRANDO INFORMAÇÕES SELECIONADAS QUE BATEM NAS DUAS TABELAS PELO CUSTOMER_ID
USE sakila;
SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    payment.rental_id,
    payment.amount
FROM customer 
JOIN payment  ON customer.customer_id = payment.customer_id;