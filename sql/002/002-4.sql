
CREATE TABLE KADRA (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nazwisko VARCHAR(50),
    Stanowisko VARCHAR(50),
    Imie VARCHAR(50),
    Pensja DECIMAL(10,2),
    Miasto VARCHAR(50)
);

INSERT INTO KADRA (ID, Nazwisko, Stanowisko, Imie, Pensja, Miasto) VALUES
(1, 'Kowalski', 'urzednik', 'Jan', 900, 'Gdansk'),
(2, 'Pawlak', 'kierownik', 'Waldemar', 3000, 'Sopot'),
(3, 'Malinowski', 'urzednik', 'Marian', 1100, 'Gdynia'),
(4, 'Nowak', 'ksiegowy', 'Adam', 2000, 'Gdansk'),
(5, 'Musial', 'stazysta', 'Ewa', 2500, 'Gdansk'),
(6, 'Miller', 'stazysta', 'Zenon', 3000, 'Gdynia'),
(7, 'Davies', 'prezes', 'Paul', 8000, 'Londyn'),
(8, 'Dobija', 'kontroler', 'Mieczysław', 3000, 'Warszawa'),
(9, 'Norton', 'informatyk', 'Peter', 3500, 'Gdansk');

SELECT Miasto, SUM(Pensja) AS WYPŁATA FROM KADRA GROUP BY Miasto ORDER BY Miasto ASC;
SELECT COUNT(*) AS LICZBA FROM KADRA WHERE Miasto = 'Gdansk';
SELECT AVG(Pensja) AS ŚREDNIA FROM KADRA WHERE Miasto NOT IN ('Gdansk', 'Sopot', 'Gdynia');
SELECT MAX(Pensja) AS MAX_PENSJA FROM KADRA WHERE Miasto = 'Gdansk';
SELECT * FROM KADRA WHERE Stanowisko IN ('urzednik', 'prezes') AND Pensja > 900;
SELECT * FROM KADRA WHERE Pensja < 1100 OR Pensja > 2800 ORDER BY Pensja ASC;
