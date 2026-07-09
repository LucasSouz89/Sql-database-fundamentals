#ALTERANDO DADOS DE UMA TABELA
SELECT * FROM payment;
UPDATE payment
SET
    amount=15.99
WHERE payment_id = 1;