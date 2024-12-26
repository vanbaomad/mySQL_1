use people;
-- cau 1
SELECT address
FROM address
WHERE address LIKE '%San%';
-- cau 2
SELECT address
FROM address
WHERE address LIKE '1%y';
-- cau 3
SELECT address
FROM address
WHERE SUBSTR(address, 3, 1) = 'a';
use sakila;
-- cau 4
SELECT first_name, last_name
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
WHERE address LIKE '%o';
-- cau 5
SELECT film.title
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Games';
-- cau 6
SELECT *
FROM person
WHERE salary BETWEEN 2000 AND 3000;
-- cau 7
SELECT a.actor_id, a.first_name, a.last_name, COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, a.first_name, a.last_name
HAVING film_count > 30
ORDER BY film_count DESC;
-- cau 8
SELECT a.actor_id, a.first_name, a.last_name
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
WHERE fa.actor_id IS NULL;
-- cau 9
SELECT f.title, SUM(p.amount) AS total_revenue
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.film_id, f.title
ORDER BY total_revenue DESC;




