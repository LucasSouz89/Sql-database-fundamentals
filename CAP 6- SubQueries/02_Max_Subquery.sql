#MOSTRAR TODAS AS INFORMAÇÕES DA TABELA PAYMENT, filtrnado pelo valor que seja igual da busca do valor maximo do customer_id um
SELECT * 
FROM payment
WHERE amount >= (
    SELECT MAX(amount) AS maximo
    FROM payment
    WHERE customer_id = 1)
ORDER BY amount ASC;