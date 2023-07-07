-- 1. Make sure you are connected to the encyclopedia database. Add the following data to the countries table:

-- |  Name  | Capital | Population |
-- | France | Paris   | 67,158,000 |

-- Solution:

\c encyclopedia

INSERT INTO countries (name, capital, population)
  VALUES ('France', 'Paris', 67158000);

-- 2. Now add the following additional data to the countries table:

-- |   Name   |   Capital   |  Population  |
-- | USA      | Washington  | 325,365,189  |
-- | Germany  | Berlin      | 82,349,400   |
-- | Japan    | Tokyo       | 126,672,000  |

-- Solution:

INSERT INTO countries (name, capital, population)
  VALUES ('USA', 'Washington', 325365189),
          ('Germany', 'Berlin', 82349400),
          ('Japan', 'Tokyo', 126672000);