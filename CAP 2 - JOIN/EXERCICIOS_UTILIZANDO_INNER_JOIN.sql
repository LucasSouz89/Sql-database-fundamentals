#EXERCICIO 1
SELECT c.first_name, a.address
FROM customer c
JOIN address a ON c.address_id = a.address_id;  
#EXERCICIO 2
SELECT ci.city, co.country
FROM country co
JOIN city ci ON co.country_id = ci.country_id;
#EXERCICIO 3
SELECT f.title,l.name
FROM language l
JOIN film f ON l.language_id = f.language_id;
#EXERCICIO 4
SELECT s.first_name,st.store_id
FROM store st
JOIN staff s ON st.store_id = s.store_id;
#EXERCICIO 5
SELECT c.first_name,p.amount
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id;
#EXERCICIO 6
SELECT f.title, c.name
FROM film f
JOIN film_category fc ON f.film_id  = fc.film_id
JOIN category c ON fc.category_id = c.category_id;
#EXERCICIO 7
SELECT c.first_name,c.last_name,a.address
FROM address a
JOIN customer c ON a.address_id = c.address_id;
#EXERCICIO 8
SELECT c.first_name ,f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;
#EXERCICIO 9
SELECT a.first_name,a.last_name,f.title
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id;
#EXERCICIO 10
SELECT s.first_name,p.amount,p.payment_date
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id;