CREATE TABLE orders (
    id integer,
    customer_name text,
    burger text,
    side text,
    drink text
);

INSERT INTO orders VALUES (1, 'Todd Perez', 'LS Burger', 'Fries', 'Lemonade');
INSERT INTO orders VALUES (2, 'Florence Jordan', 'LS Cheeseburger', 'Fries', 'Chocolate Shake');
INSERT INTO orders VALUES (3, 'Robin Barnes', 'LS Burger', 'Onion Rings', 'Vanilla Shake');
INSERT INTO orders VALUES (4, 'Joyce Silva', 'LS Double Deluxe Burger', 'Fries', 'Chocolate Shake');
INSERT INTO orders VALUES (5, 'Joyce Silva', 'LS Chicken Burger', 'Onion Rings', 'Cola');

-- Commands used:

-- $ createdb ls_burger
-- $ psql -d ls_burger < ls_burger.sql
-- $ psql -d ls_burger

-- SELECT * FROM orders;
-- SELECT side FROM orders;
-- SELECT drink, side FROM orders;
-- SELECT * FROM orders WHERE id = 1;
-- SELECT customer_name FROM orders WHERE side = 'Fries';

-- Exercises

-- 1. Write a query that returns all of the customer names from the orders table.

-- Solution:

SELECT customer_name FROM orders;

-- 2. Write a query that returns all of the orders that include a Chocolate Shake.

-- Solution:

SELECT * FROM orders WHERE drink = 'Chocolate Shake';

-- 3. Write a query that returns the burger, side, and drink for the order with an id of 2.

-- Solution:

SELECT burger, side, drink FROM orders WHERE id = 2;

-- 4. Write a query that returns the name of anyone who ordered Onion Rings.

-- Solution:

SELECT customer_name FROM orders WHERE side = 'Onion Rings';