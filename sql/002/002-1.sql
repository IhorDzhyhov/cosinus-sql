CREATE DATABASE ihor;
USE ihor;

CREATE TABLE test (ID INT AUTO_INCREMENT PRIMARY KEY, Tresc VARCHAR(50),
Odpowiedz CHAR(1), Rok YEAR, Kategoria VARCHAR(20));

INSERT INTO TEST (ID, Tresc, Rok, odpowiedz, Kategoria) VALUES
(1, 'Co to jest processor?', 'b', 2007, 'systemy operacyjne'),
(2, 'W taki sposob dziala petla IF?', 'a', 2012, 'programowanie'),
(3, 'Co oznacza skrot ALU?', 'c', 2012, 'systemy operacyjne'),
(4, 'Jaki to typ pamieci?', 'd', 2007, 'systemy operacyjne');

SELECT * FROM TEST WHERE id = 3;
SELECT * FROM TEST WHERE odpowiedz = 'a';
SELECT * FROM TEST WHERE Rok = 2007;
SELECT * FROM TEST WHERE Kategoria = 'programowanie';
SELECT * FROM TEST ORDER BY Tresc ASC;
SELECT * FROM TEST WHERE Tresc LIKE 'Jaki%';
SELECT * FROM TEST WHERE (Kategoria = 'programowanie' OR Kategoria  = 'systemy operacyjne') AND Rok = 2012;
