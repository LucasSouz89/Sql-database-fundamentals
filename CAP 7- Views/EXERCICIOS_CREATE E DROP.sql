#EXERCICIOS CREATE VIEW
#1
CREATE VIEW ator_filmografia AS
SELECT a.first_name,a.last_name, COUNT(fa.actor_id)
FROM actor a
JOIN film_actor fa USING(actor_id)
GROUP BY a.actor_id,a.first_name,a.last_name;
#2
CREATE VIEW estoque_por_loja AS
SELECT store_id,COUNT(film_id) filmes
FROM inventory
GROUP BY store_id;
#3
CREATE VIEW clientes_top_alugueis AS
SELECT c.first_name,c.last_name, COUNT(p.amount) AS contagem
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY customer_id
HAVING contagem > 30
ORDER BY  contagem DESC;
#4
CREATE VIEW resumo_categorias AS
SELECT c.name,AVG(f.rental_rate) AS valor_medio
FROM category c
JOIN film_category fc USING(category_id)
JOIN film f USING(film_id)
GROUP BY c.category_id;
#5
CREATE VIEW performance_staff AS
SELECT s.first_name,s.last_name,SUM(p.amount) AS pagamentos
FROM staff s
JOIN payment p USING(staff_id)
GROUP BY s.staff_id,s.first_name,s.last_name;
#EXERCICIOS DROP,REPLACE
#1
CREATE OR REPLACE VIEW resumo_categorias AS
SELECT c.name,AVG(f.rental_duration) AS tempo_medio
FROM category c
JOIN film_category fc USING(category_id)
JOIN film f USING(film_id)
GROUP BY c.category_id
ORDER BY tempo_medio DESC;
#2
DROP VIEW estoque_por_loja;
#3
CREATE OR REPLACE VIEW ator_filmografia AS
SELECT a.actor_id AS ID,a.first_name,a.last_name, COUNT(fa.actor_id)
FROM actor a
JOIN film_actor fa USING(actor_id)
GROUP BY a.actor_id,a.first_name,a.last_name;

#4
DROP VIEW IF EXISTS temp_relatorio;

#5
CREATE OR REPLACE VIEW clientes_top_alugueis AS
SELECT c.first_name,c.last_name,c.email, COUNT(p.amount) AS contagem
FROM customer c
JOIN payment p USING(customer_id)
GROUP BY c.customer_id
HAVING contagem > 30
ORDER BY  contagem DESC;