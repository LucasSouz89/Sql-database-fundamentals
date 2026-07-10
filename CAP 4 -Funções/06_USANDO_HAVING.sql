#Usando o having 
SELECT p.customer_id AS ID,
c.first_name AS Nome,
c.last_name AS Sobrenome,
SUM(p.amount) AS Total,
COUNT(p.customer_id) AS 'Total de compras'
FROM payment p
JOIN customer c USING(customer_id)
GROUP BY customer_id
HAVING Total >=150 AND COUNT(p.customer_id) >= 35
ORDER BY Total DESC
LIMIT 20; 