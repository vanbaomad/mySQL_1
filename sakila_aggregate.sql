use sakila;
-- cau 1
SELECT COUNT(*) AS total_actors
FROM actor;
-- cau 2
SELECT 
    MAX(length) AS longest_film,
    MIN(length) AS shortest_film
FROM film;
-- cau 3
SELECT COUNT(*) AS total_rated_R
FROM film
WHERE rating = 'R';
-- cau 4
SELECT AVG(rental_rate) AS average_rental_rate
FROM film
WHERE length > 60;



