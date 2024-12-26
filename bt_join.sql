use sakila;
-- cau 1

SELECT city.city, country.country
FROM city
INNER JOIN country ON city.country_id = country.country_id;
-- cau 2

SELECT city.city
FROM city
INNER JOIN country ON city.country_id = country.country_id
WHERE country.country = 'United States';
-- cau 3
SELECT address.address
FROM address
INNER JOIN city ON address.city_id = city.city_id
WHERE city.city = 'Hanoi';
-- cau 4
SELECT film.title, film.description, category.name AS category_name
FROM film
INNER JOIN film_category ON film.film_id = film_category.film_id
INNER JOIN category ON film_category.category_id = category.category_id
WHERE film.rating = 'R';
-- cau 5
SELECT film.title, film.description, film.rating
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'NICK' AND actor.last_name = 'WAHLBERG';
-- cau 6
SELECT customer.email
FROM customer
INNER JOIN address ON customer.address_id = address.address_id
INNER JOIN city ON address.city_id = city.city_id
INNER JOIN country ON city.country_id = country.country_id
WHERE country.country = 'United States';




