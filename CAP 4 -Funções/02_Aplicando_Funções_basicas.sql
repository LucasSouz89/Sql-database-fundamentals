USE sakila;
#Valor maximo
SELECT MAX(amount)
FROM payment;
#Valor minimo
SELECT MIN(amount)
FROM payment;
#Media
SELECT AVG(amount)
FROM payment;


#Todos
SELECT MIN(amount) AS 'Minimo',MAX(amount) AS 'Maximo',AVG(amount) AS 'Media'
FROM payment;

