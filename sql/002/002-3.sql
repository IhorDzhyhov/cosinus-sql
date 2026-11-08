CREATE TABLE NAUCZYCIELE (ID INT AUTO_INCREMENT PRIMARY KEY, Nazwisko VARCHAR(15),
Imie VARCHAR(10), Plec CHAR(1), Tytul VARCHAR(8), Data_urodzenia DATE, Pensja DECIMAL(10,2));

INSERT INTO NAUCZYCIELE (ID, Nazwisko, Imie, Tytul, Plec, Data_urodzenia, Pensja) VALUES
(1, 'Marciniak', 'Stanislaw', 'prof.', 'M', '1945-01-12', 10000),
(2, 'Fraszynski', 'Pawel', 'dr hab.', 'M', '1964-02-23', 5000),
(3, 'Kowalski', 'Stefan', 'dr', 'M', '1961-12-10', 3500),
(4, 'Kowalski', 'Waclaw', 'dr', 'M', '1956-02-11', 2800),
(5, 'Sobiepanska', 'Jadwiga', 'dr', 'K', '1968-02-21', 3000),
(6, 'Kaminski', 'Piotr', 'mgr', 'M', '1971-03-15', 2000),
(7, 'Nowak', 'Elzbieta', 'mgr', 'K', '1970-10-21', 2500),
(8, 'Sobieslawka', 'Slawa', 'mgr', 'K', '1973-03-14', 2100);

SELECT COUNT(*) AS LICZBA FROM NAUCZYCIELE WHERE Pensja >= 2800;
SELECT DISTINCT Nazwisko FROM NAUCZYCIELE ORDER BY Nazwisko ASC;
UPDATE NAUCZYCIELE SET Pensja = Pensja * 1.15 WHERE Pensja = (SELECT MIN(Pensja) FROM
(SELECT Pensja FROM NAUCZYCIELE) AS tmp);
SELECT * FROM NAUCZYCIELE;
SELECT Tytul, AVG(Pensja) AS `SREDNIE ZAROBKI` FROM NAUCZYCIELE WHERE
Tytul IN ('dr', 'mgr') GROUP BY Tytul ORDER BY Tytul ASC;
SELECT Imie, Nazwisko, Tytul, Pensja FROM NAUCZYCIELE WHERE
Tytul IN ('dr', 'dr hab.') AND Plec = 'M' ORDER BY Pensja DESC;
SELECT Tytul, SUM(Pensja) AS `DO WYPLATY` FROM NAUCZYCIELE WHERE
Tytul NOT IN ('prof.', 'dr hab.') GROUP BY Tytul ORDER BY Tytul ASC;
SELECT Imie, Nazwisko, Pensja FROM NAUCZYCIELE WHERE Nazwisko LIKE '_O%' ORDER BY Nazwisko ASC;
DELETE FROM NAUCZYCIELE WHERE ID = 1;
SELECT * FROM NAUCZYCIELE;
SELECT SUBSTRING(Nazwisko, 1, 2) AS PIERWSZE, SUBSTRING(Nazwisko, LENGTH(Nazwisko) - 1, 2) AS OSTATNIE FROM NAUCZYCIELE;
SELECT UPPER(Nazwisko) AS `NAZWISKO DRUKOWANYMI` FROM NAUCZYCIELE;
SELECT COUNT(*) AS LICZBA FROM NAUCZYCIELE WHERE MONTH(Data_urodzenia) = 2 AND Tytul = 'dr';
SELECT * FROM NAUCZYCIELE WHERE YEAR(Data_urodzenia) > 1960;
SELECT * FROM NAUCZYCIELE WHERE DAY(Data_urodzenia) BETWEEN 15 AND 24;
