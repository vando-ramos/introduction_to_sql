-- 1. Make sure you are connected to the encyclopedia database.
-- Write a query to retrieve the first row of data from the countries table.

-- Solution:

\c encyclopedia

SELECT * FROM countries LIMIT 1;

-- 2. Write a query to retrieve the name of the country with the largest population.

-- Solution:

SELECT name FROM countries
ORDER BY population DESC
LIMIT 1 ;

-- 3. Write a query to retrieve the name of the country with the second largest population.

-- Solution:

SELECT name FROM countries
ORDER BY population DESC
LIMIT 1 OFFSET 1;

-- 4. Write a query to retrieve all of the unique values from the binomial_name column of the animals table.

-- Solution:

SELECT DISTINCT binomial_name FROM animals;

-- 5. Write a query to return the longest binomial name from the animals table.

-- Solution:

SELECT binomial_name
FROM animals
ORDER BY length(binomial_name) DESC
LIMIT 1;

-- 6. Write a query to return the first name of any celebrity born in 1958.

-- Solution:

SELECT first_name
FROM celebrities
WHERE date_part('year', date_of_birth) = 1958;

-- 7. Write a query to return the highest maximum age from the animals table.

-- Solution:

SELECT max(max_age_years)
FROM animals;

-- 8. Write a query to return the average maximum weight from the animals table.

-- Solution:

SELECT avg(max_weight_kg)
FROM animals;

-- 9. Write a query to return the number of rows in the countries table.

-- Solution:

SELECT count(id) FROM countries;

-- 10. Write a query to return the total population of all the countries in the countries table.

-- Solution:

SELECT sum(population) FROM countries;

-- 11. Write a query to return each unique conservation status code alongside the number of animals that have that code.

-- Solution:

SELECT conservation_status, count(id)
FROM animals
GROUP BY conservation_status;

-- 12. Connect to the ls_burger database. Write a query that returns the average burger cost for all orders that include fries.

-- Solution:

\c ls_burger

SELECT avg(burger_cost)
FROM orders
WHERE side = 'Fries';

-- 13. Write a query that returns the cost of the cheapest side ordered.

-- Solution:

SELECT min(side_cost)
FROM orders
WHERE side IS NOT NULL;

-- 14. Write a query that returns the number of orders that include Fries and the number of orders that include Onion Rings.

-- Solution:

SELECT side, count(id)
FROM orders
WHERE side = 'Fries' OR side = 'Onion Rings'
GROUP BY side;