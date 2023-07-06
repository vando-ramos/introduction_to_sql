-- 1. From the Terminal, create a database called encyclopedia and connect to it via the psql console.

-- Solution:

-- createdb encyclopedia
-- psql -d encyclopedia

-- 2. Create a table in encyclopedia database called countries. It should have the following columns:

-- An id column of type serial
-- A name column of type varchar(50)
-- A capital column of type varchar(50)
-- A population column of type integer

-- The name column should have a UNIQUE constraint. The name and capital columns should both have NOT NULL constraints.

-- Solution:

CREATE TABLE countries (
  id serial,
  name varchar(50) UNIQUE NOT NULL,
  capital varchar(50) NOT NULL,
  population integer
);