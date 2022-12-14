/* Database schema to keep the structure of entire database. */

create table animals(
    id INT NOT NULL, name VARCHAR(255),
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg FLOAT,
    species VARCHAR(255)
);
ALTER table animals ADD species VARCHAR(255);
CREATE TABLE owners (id INT GENERATED BY DEFAULT AS IDENTITY, full_name VARCHAR(255), age INT, PRIMARY KEY(id));
CREATE TABLE species (id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, name VARCHAR(255));
ALTER TABLE animals ADD PRIMARY KEY(id);
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_owner FOREIGN KEY(owner_id) REFERENCES owners(id);
CREATE TABLE vets(id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY, name VARCHAR(255), age INT, date_of_graduation DATE);
CREATE TABLE specializations (species_id INT, vet_id INT);
CREATE TABLE visits (animal_id INT, vet_id INT);