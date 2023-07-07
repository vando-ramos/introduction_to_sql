-- 1. Create a table in encyclopedia database called animals that could contain the sample data below:

-- Name column: Lion, Killer Whale, Golden Eagle
-- Binomial Name column: Pantera leo, Orcinus orca, Aquila chrysaetos
-- Max Weight (kg) column: 250, 6,000, 6.35
-- Max Age (years) column: 20, 60, 24
-- Conservation Status column: VU, DD, LC

-- The database table should also contain an auto-incrementing id column.
-- Each animal should always have a name and a binomial name.
-- Names and binomial names vary in length but never exceed 100 characters.
-- The max weight column should be able to hold data in the range 0,001kg to 40.000kg
-- Conservation Status is denoted by a combination of two letters (CR, EN, VU, etc).

-- Solution:

CREATE TABLE animals (
  id serial,
  name varchar(100) NOT NULL,
  binomial_name varchar(100) NOT NULL,
  max_weight_kg decimal(8,3),
  max_age_years integer,
  conservation_status char(2)
);

-- 2. List all of the tables in the encyclopedia database.

-- Solution:

-- \dt

-- 3. Display the schema for the animals table.

-- Solution:

-- \d animals