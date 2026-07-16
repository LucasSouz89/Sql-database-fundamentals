#USNADO O IN
SELECT c.customer_id,c.first_name,COUNT(p.customer_id) AS compras
FROM customer c
JOIN payment p USING(customer_id)
WHERE c.customer_id IN (
    SELECT customer_id
    FROM payment
)
GROUP BY customer_id
HAVING compras > (
    SELECT AVG(cont)
    FROM(
        SELECT COUNT(customer_id) AS cont
        FROM payment
        GROUP BY customer_id
    ) AS subquery
)
ORDER BY compras DESC;