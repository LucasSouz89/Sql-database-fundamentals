#USANDO SOMA E O COUNT
SELECT ,SUM(amount) AS Soma,
COUNT(amount) AS 'Quantidade de vendas'
FROM payment
WHERE customer_id =2;