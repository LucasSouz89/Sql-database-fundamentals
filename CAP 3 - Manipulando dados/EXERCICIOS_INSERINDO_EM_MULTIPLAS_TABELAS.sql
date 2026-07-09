#EXERCICIO 1
INSERT INTO category (name)
VALUES ('Sports');

SELECT LAST_INSERT_ID();

#Exercicio 2
INSERT INTO language (name)
VALUES ('Latin');

INSERT INTO film (title,language_id)
VALUES ('Fletus crastinus',LAST_INSERT_ID());

#Exercicio 3
INSERT INTO country(country)
VALUES('BRAGENTINA');

INSERT INTO city (city,country_id)
VALUES('São Buenos Aires',LAST_INSERT_ID());