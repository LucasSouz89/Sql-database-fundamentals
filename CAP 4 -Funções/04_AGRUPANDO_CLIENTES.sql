#USANDO O ORDE BY PARA mostrar em forma ordenada o total de gastos

SELECT customer_id,SUM(amount) AS Total 
FROM payment
GROUP by customer_id
ORDER by Total DESC
LIMIT 5;