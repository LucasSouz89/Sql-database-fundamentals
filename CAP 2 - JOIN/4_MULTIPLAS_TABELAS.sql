#USANDO 3 TABELAS customer,address e payment para cruzar os dados e mostrar as seguintes opções
USE sakila;
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    a.address,
    p.rental_id,
    p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
JOIN address a ON c.address_id = a.address_id;