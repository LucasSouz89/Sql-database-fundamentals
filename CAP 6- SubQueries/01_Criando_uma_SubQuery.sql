#query principal
SELECT *
FROM payment
WHERE amount > (
    #query secundaria
    SELECT AVG(amount)
    FROM payment);


