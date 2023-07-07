-- 1. Connect to the ls_burger database. Add the following columns to the orders table:

-- A column called customer_email; it should hold strings of up to 50 characters.
-- A column called customer_loyalty_points that should hold integer values.
-- If no value is specified for this column, then a value of 0 should be applied.

-- Solution:

\c ls_burger

ALTER TABLE orders
  ADD COLUMN customer_email varchar(50),
  ADD COLUMN customer_loyalty_points integer DEFAULT 0;

-- 2. Add three columns to the orders table called burger_cost, side_cost,
-- and drink_cost to hold monetary values in dollars and cents (assume that all values will be less than $100).
-- If no value is entered for these columns, a value of 0 dollars should be used.

-- Solution:

ALTER TABLE orders
  ADD COLUMN burger_cost decimal(4,2) DEFAULT 0,
  ADD COLUMN side_cost decimal(4,2) DEFAULT 0,
  ADD COLUMN drink_cost decimal(4,2) DEFAULT 0;

-- 3. Remove the order_total column from the orders table.

-- Solution:

ALTER TABLE orders DROP COLUMN order_total;