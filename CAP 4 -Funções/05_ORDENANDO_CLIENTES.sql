#filtarar as informações,cruzar duas tabelas, agrupar por cliente e ordernar pelo total
SELECT p.customer_id AS ID,c.first_name AS Nome,c.last_name AS Sobrenome,SUM(p.amount) AS Total
FROM payment p
JOIN customer c USING(customer_id)
GROUP BY customer_id
ORDER BY Total DESC; 