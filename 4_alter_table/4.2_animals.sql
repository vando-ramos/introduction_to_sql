-- 1. Change the max_weight_kg column in the animals table so that it can hold values in the range 0.0001kg to 200,000kg

-- Solution:

ALTER TABLE animals
  ALTER COLUMN max_weight_kg TYPE decimal(10,4);

-- 2. Change the animals table so that the binomial_name column cannot contain duplicate values.

-- Solution:

ALTER TABLE animals
  ADD CONSTRAINT binomial_name TYPE UNIQUE(binomial_name);