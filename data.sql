/* Populate database with sample data. */
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', 'Feb 3, 2020', 0, True, 10.23);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', 'Nov 15, 2018', 2, True, 8);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', 'Jan 7, 2021', 1, False, 15.04);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', 'May 12, 2017', 5, True, 11);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', 'Feb 8, 2020', 0, False, 11),
('Plantmon', 'Nov 15, 2021', 2, True, 5.7),
('Squirtle', 'Apr 2, 1993', 3, False, 12.13),
('Angemon', 'Jun 12, 2005', 1, True, 45),
('Boarmon', 'Jun 7, 2005', 7, True, 20.4),
('Blossom', 'Oct 13, 1998', 3, True, 17),
('Ditto', 'May 14, 2022', 4, True, 22);
INSERT INTO owners(full_name, age) VALUES ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester' ,14),
('Jodie Whittaker', 38);
INSERT INTO species(name) VALUES ('Pokemon');
INSERT INTO species(name) VALUES ('Digimon');
BEGIN;
UPDATE animals SET species_id = 13 WHERE name LIKE '%mon';
COMMIT;
BEGIN;
UPDATE animals SET species_id = 12 WHERE name NOT LIKE '%mon';
COMMIT;
BEGIN;
UPDATE animals SET owner_id=19 WHERE name = 'Agumon';
UPDATE animals SET owner_id=20 WHERE name = 'Gabumon';
UPDATE animals SET owner_id=20 WHERE name =  'Pikachu';
UPDATE animals SET owner_id=21 WHERE name =  'Devimon';
UPDATE animals SET owner_id=21 WHERE name =  'Plantmon';
UPDATE animals SET owner_id=22 WHERE name =  'Charmander';
UPDATE animals SET owner_id=22 WHERE name =  'Squirtle';
UPDATE animals SET owner_id=22 WHERE name =  'Blossom';
UPDATE animals SET owner_id=23 WHERE name =  'Angemon';
UPDATE animals SET owner_id=23 WHERE name =  'Boarmon';
COMMIT;
BEGIN;
INSERT INTO vets(name, age, date_of_graduation) VALUES('William Tatcher', 45, 'Apr 23, 2000'),('Maisy Smith', 26, 'Jan 17, 2019'), ('Stephanie Mendez', 64, 'May 4, 1981'), ('Jack Harkness', 38, 'Jun 8, 2008');
INSERT INTO specializations(species_id, vet_id) VALUES (1, 12),(3,12),(3,13),(4, 13);
COMMIT;
ALTER TABLE visits ADD date DATE;
BEGIN;
INSERT INTO visits(animal_id, vet_id, date) VALUES (12, 1, 'May 24, 2020'),(12, 3, 'Jul 22, 2020'),(13, 4, 'Feb 2, 2021'), (14, 2, 'Jan 5, 2020'),(14, 2, 'Mar 8, 2020'),(14, 2,'May 14, 2020'), (15, 3, 'May 4, 2021'), (16, 4, 'Feb 24, 2021'), (17, 2, 'Dec 21, 2019'), (17, 1, 'Aug 10, 2020'), (17, 2, 'Apr 7, 2021'), (18, 3, 'Sep 29, 2019'), (19, 4, 'Oct 3, 2020'), (19, 4, 'Nov 4, 2020'),(20, 2, 'Jan 24, 2019'), (20, 2, 'May 15, 2019'), (20, 2, 'Feb 27, 2020'),(20,2, 'Aug 3, 2020'), (21, 3, 'May 24, 2020'), (21, 1, 'Jan 11, 2021');
COMMIT;