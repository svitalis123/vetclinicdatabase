/*Queries that provide answers to the questions from all projects.*/

 SELECT * FROM animals WHERE name LIKE '%MON';
 SELECT * FROM animals WHERE date_of_birth BETWEEN '01-01-2016' AND '12-12-2019';
 SELECT * FROM animals WHERE neutered = True AND escape_attempts < 3;
 SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
 SELECT * FROM animals WHERE neutered = True;
 SELECT * FROM animals WHERE NOT name =  'Gabumon';
 SELECT * FROM animals WHERE weight_kg BETWEEN 10.3 AND 17.4;
 BEGIN;
 UPDATE animals SET species = 'unspecified';
 SELECT species FROM animals;
 ROLLBACK;
 SELECT species FROM animals;
 BEGIN;
 UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
 UPDATE animals SET species = 'pokemon' WHERE species = '';
 SELECT species FROM animals;
 COMMIT;
 SELECT species FROM animals;
 BEGIN;
 DELETE FROM animals;
 ROLLBACK;
 BEGIN;
 DELETE FROM animals WHERE date_of_birth > 'Jan 1, 2022';
 SAVEPOINT CHICA;
 UPDATE animals SET weight_kg = weight_kg * -1;
 ROLLBACK TO CHICA;
 UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
 COMMIT;
 SELECT COUNT(*) FROM animals;
 SELECT COUNT(escape_attempts) FROM animals WHERE escape_attempts = 0;
 SELECT neutered, COUNT(escape_attempts) FROM animals GROUP BY neutered;
 SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
 SELECT species, AVG(escape_attempts), date_of_birth  FROM animals WHERE date_of_birth BETWEEN 'Jan 1, 1990' AND 'Dec 31, 2000' GROUP BY date_of_birth, species;