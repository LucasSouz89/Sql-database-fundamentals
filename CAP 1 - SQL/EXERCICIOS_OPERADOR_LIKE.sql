#EXERCICIO 1
SELECT first_name,last_name
FROM actor
WHERE LAST_name LIKE '%SON'
ORDER BY last_name ASC;

#EXERCICIO 2
SELECT title
FROM film
WHERE title LIKE '____'
ORDER BY title;

#EXERCICIO 3
SELECT address,district
FROM address
WHERE address LIKE '%Drive%'
ORDER BY district;