-- 1. Connect to the encyclopedia database.
--    Write a query to return all of the country names along with their appropriate continent names.

-- Solution:

\c encyclopedia

SELECT countries.name, continents.continent_name
FROM countries JOIN continents
ON countries.continent_id = continents.id;

-- 2. Write a query to return all of the names and capitals of the European countries.

-- Solution:

SELECT countries.name, countries.capital, continents.continent_name
FROM countries JOIN continents
ON countries.continent_id = continents.id
WHERE continents.continent_name = 'Europe';

-- 3. Write a query to return the first name of any singer who had an album released under the Warner Bros label.

-- Solution:

SELECT DISTINCT singers.first_name
FROM singers JOIN albums
ON singers.id = albums.singer_id
WHERE albums.label LIKE '%Warner Bros%';

-- 4. Write a query to return the first name and last name of any singer who released an album in the 80s and who is still living,
--    along with the names of the album that was released and the release date. Order the results by the singer's age (youngest first).

-- Solution:

SELECT singers.first_name, singers.last_name, albums.album_name, albums.released
FROM singers JOIN albums
ON singers.id = albums.singer_id
WHERE albums.released >= '1980-01-01' 
AND albums.released < '1990-01-01'
AND singers.deceased = false
ORDER BY singers.date_of_birth DESC;

-- 5. Write a query to return the first name and last name of any singer without an associated album entry.

-- Solution:

SELECT singers.first_name, singers.last_name
FROM singers LEFT JOIN albums
ON singers.id = albums.singer_id
WHERE albums.id IS NULL;

-- 6. Rewrite the query for the last question as a sub-query.

-- Solution:

SELECT singers.first_name, singers.last_name
FROM singers
WHERE id NOT IN (
SELECT singer_id FROM albums
);

-- 7. Connect to the ls_burger database. Return a list of all orders and their associated product items.

-- Solution:

\c ls_burger

SELECT orders.*, products.*
FROM orders JOIN order_items
ON orders.id = order_items.order_id
JOIN products
ON order_items.product_id = products.id;

-- 8. Return the id of any order that includes Fries. Use table aliasing in your query.

-- Solution:

SELECT o.id
FROM orders AS o JOIN order_items AS oi
ON o.id = oi.order_id
JOIN products AS p
ON oi.product_id = p.id
WHERE p.product_name = 'Fries';

-- 9. Build on the query from the previous question to return the name of any customer who ordered fries.
--    Return this in a column called 'Customers who like Fries'. Don't repeat the same customer name more than once in the results.

-- Solution:

SELECT DISTINCT c.customer_name AS "Customers who like Fries"
FROM customers AS c JOIN orders as o
ON c.id = o.customer_id
JOIN order_items AS oi
ON o.id = oi.order_id
JOIN products AS p
ON oi.product_id = p.id
WHERE p.product_name = 'Fries';

-- 10. Write a query to return the total cost of Natasha O'Shea's orders.

-- Solution:

SELECT sum(p.product_cost)
FROM customers AS c JOIN orders as o
ON c.id = o.customer_id
JOIN order_items AS oi
ON o.id = oi.order_id
JOIN products AS p
ON oi.product_id = p.id
WHERE c.customer_name = 'Natasha O''Shea';

-- 11. Write a query to return the name of every product included in an order alongside the number of times it has been ordered.
--     Sort the results by product name, ascending.

-- Solution:

SELECT p.product_name, COUNT(oi.id)
FROM products AS p JOIN order_items AS oi
ON p.id = oi.product_id
GROUP BY p.product_name
ORDER BY p.product_name ASC;