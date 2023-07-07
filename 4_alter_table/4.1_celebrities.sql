-- 1. Make sure you are connected to the encyclopedia database. Rename the famous_people table to celebrities.

-- Solution:

psql -d encyclopedia

ALTER TABLE famous_people RENAME TO celebrities;

-- 2. Change the name of the name column in the celebrities table to first_name, and change its data type to varchar(80).

-- Solution:

ALTER TABLE celebrities
  RENAME COLUMN name to first_name;

ALTER TABLE celebrities
  ALTER COLUMN first_name TYPE varchar(80);

-- 3. Create a new column in the celebrities table called last_name.
-- It should be able to hold strings of lengths up to 100 characters.
-- This column should always hold a value.

-- Solution:

ALTER TABLE celebrities
  ADD COLUMN last_name varchar(100) NOT NULL;

-- 4. Change the celebrities table so that the date_of_birth column uses a data type that holds an actual date value rather than a string.
-- Also ensure that this column must hold a value.

-- Solution:

ALTER TABLE celebrities
  ALTER COLUMN date_of_birth TYPE date
  USING date_of_birth::date,
  ALTER COLUMN date_of_birth SET NOT NULL;