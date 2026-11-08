CREATE DATABASE ihor;
USE ihor;

CREATE TABLE klient (id INTEGER, nazwa VARCHAR(20));
INSERT INTO klient (id, nazwa) VALUES (1, 'Firma A'), (2, 'Firma B'),
(3, 'Firma C'), (4, 'Firma D');
SELECT * FROM klient;
