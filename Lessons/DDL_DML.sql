
DROP  DATABASE IF EXISTS jobs_marts;

CREATE DATABASE IF NOT EXISTS jobs_mart;

SHOW DATABASES;


SELECT * FROM  information_schema.schemata;

USE jobs_mart;

CREATE SCHEMA  IF NOT EXISTS  staging;

--DROP SCHEMA staging;

CREATE TABLE IF NOT EXISTS staging.preffered_roles
( 
    role_id INTEGER PRIMARY KEY,
    role_name  VARCHAR
);

SELECT * FROM  information_schema.tables
WHERE table_catalog ='jobs_mart';

--DROP TABLE staging.preffered_roles;

INSERT INTO  staging.preffered_roles(role_id,role_name)
VALUES
(1, 'Data Engineer'),
(2, 'Senior Data Engineer'),
(3, 'Software Engineer');

SELECT * FROM staging.preffered_roles;



