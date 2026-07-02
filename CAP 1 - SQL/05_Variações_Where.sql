USE sakila;
SELECT * FROM payment
#JEITO 1
#WHERE amount != 0.99
#JEITO 2
WHERE amount <> 0.99
ORDER BY amount desc;

#Mostrar todas as informações da tabela apenas o distrito seja diferente da california
SELECT * FROM address
WHERE district != 'California'
