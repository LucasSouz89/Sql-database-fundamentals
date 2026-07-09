SELECT * FROM sakila.city;
INSERT INTO country (country,country_id)
VALUES
    ('Venezuela',DEFAULT);
SELECT * FROM country;
#Usando o last insert id para colocar o ultimo id gerado na ultima tabela
INSERT INTO city (city,country_id)
VALUES ('Caracas',LAST_INSERT_ID());

SELECT * FROM city;
