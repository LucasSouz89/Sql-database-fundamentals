#cRIANDO UMA VIEW que nada mais é do que um atahlho para chamar essa query
CREATE VIEW vendas_por_cliente AS
SELECT c.customer_id, c.first_name,c.last_name,SUM(p.amount) AS total
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY c.customer_id, c.first_name,c.last_name;

SELECT * FROM vendas_por_cliente
WHERE total > 120;