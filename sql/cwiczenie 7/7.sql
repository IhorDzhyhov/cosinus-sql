CREATE DATABASE IF NOT EXISTS ihor;
USE ihor;

CREATE TABLE IF NOT EXISTS UCZNIOWIE (
    id_ucz INT PRIMARY KEY,
    Nazwisko VARCHAR(30) NOT NULL,
    Imie VARCHAR(30) NOT NULL,
    PESEL CHAR(11) NOT NULL,
    Adres_ul VARCHAR(30) NOT NULL,
    Adres_nr VARCHAR(10) NOT NULL,
    Miasto VARCHAR(30) NOT NULL
);

INSERT IGNORE INTO UCZNIOWIE
    (id_ucz, Nazwisko, Imie, PESEL, Adres_ul, Adres_nr, Miasto)
VALUES
    (1, 'Abacki', 'Jan', '95091202012', 'Nocna', '21a', 'Gniezno'),
    (2, 'Babacki', 'Tomasz', '96100102013', 'Gwiezdna', '2', 'Gniezno'),
    (3, 'Cebacki', 'Jerzy', '95110902056', 'Mierna', '13b', 'Kutno'),
    (4, 'Debacki', 'Tobiasz', '94010398345', 'Bierna', '3', 'Miastko'),
    (5, 'Ebacki', 'Adrian', '95010198934', 'Marna', '456', 'Mielno');

SELECT *
FROM UCZNIOWIE;

SELECT Imie, Nazwisko
FROM UCZNIOWIE
ORDER BY Nazwisko;

SELECT Miasto, COUNT(*) AS LICZBA_UCZNIOW
FROM UCZNIOWIE
GROUP BY Miasto;
