USE sakila;
#EXERCICIO 1
SELECT payment_id, staff_id,customer_id,amount
FROM payment
#FORMA 1
#WHERE NOT staff_id = 2 AND (amount > 5 OR customer_id = 1)
#FORMA 2
WHERE staff_id != 2 && (amount > 5 || customer_id = 1)
ORDER BY amount DESC;

#EXERCICIO 2
SELECT first_name,last_name,email 
FROM customer
WHERE active = 1 && first_name LIKE 'J%' && (store_id = 1 || store_id =2)
ORDER BY first_name ASC;