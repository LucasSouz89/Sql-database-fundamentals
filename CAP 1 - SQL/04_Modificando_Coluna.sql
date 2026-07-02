USE sakila;
#Criando uma coluna a partir de dados que já existem, no caso um produto com 10% de desconto
SELECT 
customer_id,
amount,
amount - (amount * 0.10) AS '10% discount'
FROM payment
WHERE customer_id = 1;