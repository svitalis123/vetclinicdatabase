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
