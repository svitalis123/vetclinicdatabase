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
 SELECT name, full_name FROM animals JOIN owners ON animals.owner_id=owners.id WHERE owner_id=22;
 SELECT animals.name FROM animals JOIN species ON animals.species_id=species.id WHERE species_id=12;
 SELECT animals.name, owners.full_name FROM animals FULL JOIN owners ON animals.owner_id=owners.id;
 SELECT species.name, COUNT(species_id) FROM animals JOIN species ON animals.species_id = species.id GROUP BY species.name;
 SELECT animals.name, owners.full_name FROM animals JOIN owners ON animals.owner_id = owners.id JOIN species ON animals.species_id=species.id WHERE owners.full_name='Jennifer Orwell' AND species.name='Digimon';
 SELECT animals.name, animals.escape_attempts, full_name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE escape_attempts = 0 AND owner_id=23;
 SELECT full_name, COUNT(owner_id) AS num_animals FROM animals JOIN owners ON animals.owner_id=owners.id GROUP BY full_name ORDER BY num_animals DESC LIMIT 1;
 SELECT animals.name FROM visits JOIN animals ON visits.animal_id = animals.id WHERE vet_id = 1 ORDER BY date DESC LIMIT 1;
 SELECT COUNT(DISTINCT animal_id) FROM visits WHERE vet_id = 3;
 SELECT vets.name, species.name FROM vets LEFT JOIN specializations ON vets.id=specializations.vet_id LEFT JOIN species ON specializations.species_id=species.id;
 SELECT animals.name FROM visits  INNER JOIN animals ON visits.animal_id=animals.id WHERE vet_id=3 AND date  BETWEEN 'April 1, 2020' AND 'August 30, 2020';
 SELECT animals.name, COUNT(*) AS va FROM visits JOIN animals ON visits.animal_id=animals.id GROUP BY animals.name ORDER BY va DESC LIMIT 1;
 SELECT animals.name FROM visits  JOIN animals ON visits.animal_id=animals.id ORDER BY date ASC LIMIT 1;
 SELECT animals.name, animals.date_of_birth, animals.escape_attempts, animals.neutered, animals.weight_kg, vets.name, vets.age, vets.date_of_graduation, visits.date FROM visits FULL JOIN animals ON visits.animal_id=animals.id FULL JOIN vets ON visits.vet_id=vets.id;
 SELECT COUNT(*) FROM visits LEFT JOIN specializations ON visits.vet_id=specializations.vet_id AND visits.animal_id=specializations.species_id WHERE specializations.vet_id IS NULL;
 SELECT species.name FROM specializations JOIN species ON specializations.species_id=species.id JOIN visits ON specializations.vet_id=visits.vet_id WHERE specializations.vet_id=2 GROUP BY species.name  ORDER BY COUNT(visits.animal_id) DESC LIMIT 1;
 
