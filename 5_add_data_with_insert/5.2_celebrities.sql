-- 1. Add an entry to the celebrities table for the singer and songwriter Bruce Springsteen,
-- who was born on September 23rd 1949 and is still alive.

-- Solution:

INSERT INTO celebrities (first_name, last_name, occupation, date_of_birth, deceased)
  VALUES ('Bruce', 'Springsteen', 'Singer, Songwriter', '1949-09-23', false);

-- 2. Add an entry for the actress Scarlett Johansson, who was born on November 22nd 1984.
-- Use the default value for the deceased column.

-- Solution:

INSERT INTO celebrities (first_name, last_name, occupation, date_of_birth)
  VALUES ('Scarlett', 'Johansson', 'Actress', '1984-11-22');

-- 3. Add the following two entries to the celebrities table with a single INSERT statement.
-- For Frank Sinatra set true as the value for the deceased column. For Tom Cruise,
-- don't set an explicit value for the deceased column, but use the default value.

--  First Name | Last Name |   Occupation   |       D.O.B.       
-- ------------+-----------+----------------+-------------------
--  Frank      | Sinatra   | Singer, Actor  | December 12, 1915  
--  Tom        | Cruise    | Actor          | July 03, 1962      

-- Solution:

INSERT INTO celebrities (first_name, last_name, occupation, date_of_birth, deceased)
  VALUES ('Frank', 'Sinatra', 'Singer, Actor', '1915-12-12', true),
          ('Tom', 'Cruise', 'Actor', '1962-07-03', DEFAULT);

-- 4. Look at the schema of the celebrities table. What do you think will happen if we try to insert the following data?

--  First Name | Last Name |               Occupation            |     D.O.B.    | Deceased
-- ------------+-----------+-------------------------------------+---------------+----------
--  Madonna    |           | Singer, Actress                     | '16/08/1958'  | False    
--  Prince     |           | Singer, Songwriter, Musician, Actor | '06/07/1958'	 | True     

-- Solution:

INSERT INTO celebrities (first_name, occupation, date_of_birth, deceased)
  VALUES ('Madonna', 'Singer, Actress', '1958-08-16', false),
          ('Prince', 'Singer, Songwriter, Musician, Actor', '1958-07-06', true);

ERROR:  null value in column "last_name" of relation "celebrities" violates not-null constraint


-- 5. Update the last_name column of the celebrities table so that the data in the previous question can be entered,
-- and then add the data to the table.

-- Solution:

ALTER TABLE celebrities
  ALTER COLUMN last_name DROP NOT NULL;

INSERT INTO celebrities (first_name, occupation, date_of_birth, deceased)
  VALUES ('Madonna', 'Singer, Actress', '1958-08-16', false),
          ('Prince', 'Singer, Songwriter, Musician, Actor', '1958-07-06', true);

-- 6. Check the schema of the celebrities table. What would happen if we specify a NULL value for deceased column,
-- such as with the data below?

--  First Name | Last Name |        Occupation        |     D.O.B.    | Deceased 
-- ------------+-----------+--------------------------+---------------+----------
--  Elvis      | Presley   | Singer, Musician, Actor  | '01/08/1935'	| NULL     

-- Solution:

INSERT INTO celebrities (first_name, last_name, occupation, date_of_birth, deceased)
  VALUES ('Elvis', 'Presley', 'Singer, Musician, Actor', '1935-08-01', NULL);