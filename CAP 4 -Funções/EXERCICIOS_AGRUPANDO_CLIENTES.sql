#EXERCICIO 1
SELECT customer_id,SUM(amount) AS Total
FROM payment
GROUP BY customer_id
HAVING Total > 150
ORDER BY Total DESC;

#EXERCICIO 2
SELECT fc.category_id,AVG(f.length) AS Total
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
GROUP BY fc.category_id
ORDER BY Total DESC;

#EXERCICIO 3
SELECT COUNT(amount) AS 'Quantidade de pagamentos'
FROM payment
WHERE payment_date BETWEEN '2005-01-01' AND '2005-12-31'
GROUP BY customer_id
HAVING COUNT(amount) > 30
ORDER BY 'Quantidade de pagamentos' DESC;