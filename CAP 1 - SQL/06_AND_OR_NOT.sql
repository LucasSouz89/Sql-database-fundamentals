USE sakila;
#AND OU SIMPLESMENTE &&
SELECT * FROM customer
WHERE store_id = 1 && active = 0;
#OR OU SIMPLESMENTE ||
SELECT * FROM payment
WHERE staff_id =1 || amount = 0.99;
#NOT  ou de negação
SELECT * FROM payment
WHERE NOT staff_id = 1 && amount = 0.99 && customer_id <10;
