USE sakila;

-- 1. Which films are over 2 hours long?
SELECT film_id, title, length
FROM film
WHERE length > 120;



-- 2. Which category name had the most films
SELECT c.name AS category_name, COUNT(f.film_id) AS total_films
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY c.category_id, c.name
ORDER BY total_films DESC
LIMIT 1;


-- 3. How many actor for film 'AFFAIR PREJUDICE'
SELECT COUNT(a.actor_id) AS total_actors
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.title = 'AFFAIR PREJUDICE';


-- 4. Which 5 customers made the most rental
SELECT c.customer_id, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, COUNT(r.rental_id) AS total_rentals
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_rentals DESC
LIMIT 5;

    
-- 5. Which film was shown category 'Action'
SELECT f.film_id, f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Action';


-- 6. How many of the customers made a rental
SELECT COUNT(DISTINCT r.customer_id) AS total_customers
FROM rental r;
