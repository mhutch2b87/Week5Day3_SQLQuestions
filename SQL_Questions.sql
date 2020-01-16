SELECT first_name, last_name, district
FROM customer 
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'Texas';

SELECT first_name, last_name, amount
FROM customer
INNER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE amount> 6.99;

SELECT *
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	HAVING SUM(amount) > 175
	ORDER BY SUM(amount) DESC
);

SELECT first_name, last_name, country
FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
INNER JOIN city
ON address.city_id = city.city_id
INNER JOIN country 
ON city.country_id = country.countryid
WHERE country = 'Nepal'

SELECT first_name, last_name, COUNT(payment.staff_id)
FROM staff
INNER JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id
ORDER BY COUNT DESC
LIMIT 1;

SELECT film.rating, COUNT(film.rating)
FROM film
GROUP BY film.rating;

SELECT *
FROM customer
WHERE customer_id IN(
	SELECT customer_id
	FROM payment
	WHERE amount > 6.99
);

SELECT COUNT(payment_id)
FROM payment
WHERE amount = 0;