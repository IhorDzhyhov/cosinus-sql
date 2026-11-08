USE ihor;

CREATE TABLE IF NOT EXISTS PRACOWNICY (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nazwisko VARCHAR(20) NOT NULL,
    Imie VARCHAR(20) NOT NULL,
    Tytul VARCHAR(10) NOT NULL,
    Data_urodzenia DATE NOT NULL
);

INSERT IGNORE INTO PRACOWNICY
    (ID, Nazwisko, Imie, Tytul, Data_urodzenia)
VALUES
    (1, 'Marciniak', 'Stanislaw', 'prof.', '1945-01-12'),
    (2, 'Fraszynski', 'Pawel', 'dr hab.', '1964-02-23'),
    (3, 'Kowalski', 'Stefan', 'dr', '1961-12-01'),
    (4, 'Kowalski', 'Waclaw', 'dr', '1956-02-01'),
    (5, 'Sobiepanski', 'Janusz', 'dr', '1968-02-21'),
    (6, 'Kaminski', 'Piotr', 'mgr', '1971-03-01'),
    (7, 'Nowak', 'Jan', 'mgr', '1970-10-02'),
    (8, 'Sobieslawski', 'Wojciech', 'mgr', '1973-03-01');

SELECT Nazwisko, Imie
FROM PRACOWNICY
WHERE Tytul = 'dr'
ORDER BY Nazwisko;

SELECT Nazwisko
FROM PRACOWNICY;

SELECT DISTINCT Nazwisko
FROM PRACOWNICY;

SELECT *
FROM PRACOWNICY
WHERE DAY(Data_urodzenia) BETWEEN 1 AND 10;

SELECT COUNT(*) AS LICZBA
FROM PRACOWNICY
WHERE MONTH(Data_urodzenia) = 3;

SELECT *
FROM PRACOWNICY
ORDER BY Nazwisko DESC
LIMIT 3;

SELECT *
FROM PRACOWNICY
WHERE Tytul IN ('mgr', 'dr hab.')
  AND YEAR(Data_urodzenia) > 1960;

SELECT
    Nazwisko,
    LEFT(Nazwisko, 2),
    RIGHT(Nazwisko, 2)
FROM PRACOWNICY;

SELECT UPPER(Nazwisko)
FROM PRACOWNICY;
