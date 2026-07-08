#EXERCICIO 1
INSERT INTO actor (first_name,last_name)
VALUES('Johnny','Cage');

SELECT * FROM actor
WHERE first_name LIKE 'Jo%';

#EXERCICIO 2
INSERT INTO category (name)
VALUES('Sci-Fi');
SELECT * FROM category;

#Exercicio 3
INSERT INTO address (address,district,city_id,postal_code,phone,location)
VALUES('Avenida Transilvania', 'Centro', 1, '09893', '1199999999',ST_GeomFromText('POINT(0 0)'));

SELECT LAST_INSERT_ID();

#EXERCICIO 4
INSERT INTO film (title, language_id, rental_duration, rental_rate, replacement_cost, rating, special_features)
VALUES('O Retorno do Dev', 1, 3, 4.99, 19.99, 'PG-13', 'Trailers');

SELECT language_id  FROM film;

#Exercicio 5
SELECT * FROM film;

INSERT INTO category 
VALUES(1001, 17,CURRENT_TIMESTAMP);
