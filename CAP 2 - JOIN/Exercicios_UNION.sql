#Exercicios usaNDO O UNION
#Exercicio 1
SELECT first_name FROM customer
UNION
SELECT first_name FROM actor;
#Exercicio 2
SELECT first_name FROM customer
UNION ALL
SELECT first_name FROM customer;
#Exercicio 3
SELECT first_name, 'Trabalhadores' AS origem FROM staff
UNION ALL
SELECT first_name, 'Clientes' AS origem FROM customer;
#Exercicio 4
SELECT city AS local FROM city
UNION 
SELECT country AS local FROM country;
#Exercicio 5
SELECT first_name FROM actor
WHERE first_name LIKE '%A'
UNION
SELECT first_name FROM customer
WHERE first_name LIKE '%A';
