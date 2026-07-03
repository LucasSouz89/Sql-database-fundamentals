USE sakila;

#O IN é usando ao inves do || para maior produtividade
SELECT * FROM address
WHERE district IN('Alberta','California','Texas');