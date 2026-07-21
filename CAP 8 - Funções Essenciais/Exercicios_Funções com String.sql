#1
SELECT first_name,last_name,LOWER(email) AS email_formatado
FROM customer;
#2
SELECT LEFT(UPPER(first_name),1) as nome
FROM customer;
#3
SELECT RTRIM('Silva   ');
#4
SELECT CONCAT(LEFT(first_name,3),RIGHT(last_name,3)) AS nickname
FROM customer;
#5
SELECT LOCATE('a',first_name)
FROM actor;
#6
SELECT REPLACE(CONCAT(first_name, ' ',last_name), ' ', '_') as nickname
FROM customer;
#7
SELECT SUBSTRING_INDEX(email, '@', -1) as address
FROM customer;
#8
SELECT first_name
FROM actor
WHERE LENGTH(first_name) > 10;
#8 com  nome completo
SELECT CONCAT(first_name, ' ',last_name) as nome_completo
FROM actor
WHERE LENGTH(CONCAT(first_name, ' ',last_name)) > 10;
#9
SELECT FORMAT(amount,2) 
FROM payment;
#10
SELECT CONCAT_WS(' ',first_name,last_name)
FROM customer;

