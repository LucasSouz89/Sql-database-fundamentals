#view antiga
DROP VIEW vendas_por_cliente;


#para que a nova view funcione existe dois jeitos: 
# o primeiro deve clicar ou digitar drop na antiga e escrever de novo com o CREATE VIEW
# o segundo é usar o CREATE OR REPLACE para atualizar uma view já existente
CREATE OR REPLACE VIEW vendas_por_cliente AS
SELECT c.customer_id, c.first_name,c.last_name,SUM(p.amount) AS total
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY c.customer_id, c.first_name,c.last_name
ORDER BY total DESC;

SELECT * FROM vendas_por_cliente
WHERE total > 120;