-- Check the schema of the animals table. What would happen if we tried to insert the following data to the table?

-- |       Name       |      Binomial Name       | Max Weight (kg) | Max Age (years) | Conservation Status |
-- | Dove             | Columbidae Columbiformes | 2               | 15              | LC                  |
-- | Golden Eagle     | Aquila Chrysaetos        | 6.35            | 24              | LC                  |
-- | Peregrine Falcon | Falco Peregrinus         | 1.5             | 15              | LC                  |
-- | Pigeon           | Columbidae Columbiformes | 2               | 15              | LC                  |
-- | Kakapo           | Strigops habroptila      | 4               | 60              | CR                  |

-- Solution:

ERROR:  duplicate key value violates unique constraint "unique_binomial_name"
DETAIL:  Key (binomial_name)=(Columbidae Columbiformes) already exists.

ALTER TABLE animals
  DROP CONSTRAINT unique_binomial_name;

INSERT INTO animals (name, binomial_name, max_weight_kg, max_age_years, conservation_status)
  VALUES ('Dove', 'Columbidae Columbiformes', 2, 15, 'LC'),
        ('Golden Eagle', 'Aquila Chrysaetos', 6.35, 24, 'LC'),
        ('Peregrine Falcon', 'Falco Peregrinus', 1.5, 15, 'LC'),
        ('Pigeon', 'Columbidae Columbiformes', 2, 15, 'LC'),
        ('Kakapo', 'Strigops habroptila', 4, 60,'CR');