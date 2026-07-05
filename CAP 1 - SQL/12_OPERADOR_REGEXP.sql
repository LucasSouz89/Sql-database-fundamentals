USE sakila;
#REGEXP É USADO PARA ACHAR INFORMAÇÕES QUE CONTANHA PELO MENOS ESSE ELEMENTO
SELECT * FROM actor
WHERE first_name REGEXP 'a';
#Usando ele para achar elementos que comecem com a letra a
SELECT * FROM actor
WHERE first_name REGEXP '^a';
#Usando ele para achar elementos que comecem com a letra a ou b
SELECT * FROM actor
WHERE first_name REGEXP '^a|^b';
#Bucar nomes que tenham ga ou ea
SELECT * FROM actor
WHERE first_name REGEXP '[ge]a';

SELECT * FROM actor
WHERE first_name REGEXP '^[gcr]a';