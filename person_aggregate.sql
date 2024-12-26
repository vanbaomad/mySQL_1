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



