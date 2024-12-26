use sakila;
-- cau 1
SELECT f.film_id, f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Action';
-- cau 2
SELECT f.title AS film_title, c.name AS category_name
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;
-- cau 3
SELECT f.title AS film_title, COUNT(c.category_id) AS category_count
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY f.film_id, f.title;
-- cau 4
SELECT f.title AS film_title, c.name AS category_name
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE f.rating = 'PG-13';
-- cau 5
SELECT a.first_name, a.last_name, COUNT(f.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film_category fc ON fa.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Family'
GROUP BY a.actor_id, a.first_name, a.last_name
ORDER BY film_count DESC;
-- cau 6
SELECT f.title AS film_title, COUNT(a.actor_id) AS actor_count
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
GROUP BY f.film_id, f.title
ORDER BY actor_count DESC;
-- cau 7
SELECT a.first_name, a.last_name
FROM actor a
WHERE a.last_name = 'Smith' AND a.first_name LIKE 'J%';
-- cau 8
SELECT f.title AS film_title, SUM(r.amount) AS revenue
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE YEAR(r.rental_date) = 2015
GROUP BY f.film_id, f.title
HAVING revenue > 5000;
-- cau 9
SELECT f.title AS film_title, l.name AS language_name
FROM film f
JOIN language l ON f.language_id = l.language_id;
-- cau 10
SELECT f.title
FROM film f
WHERE f.title LIKE 'I%' AND f.title LIKE '%N';
