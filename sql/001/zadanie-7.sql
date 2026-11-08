CREATE TABLE pracownicy (id INTEGER, imie VARCHAR(50), nazwisko VARCHAR(50),
placa DECIMAL(7,2), stanowisko VARCHAR (50), PESEL CHAR(11));

INSERT INTO pracownicy (id, imie, nazwisko, placa, stanowisko, PESEL) VALUES (1, 'Adam', 'Kowalski', 1500.00, 'kierownik', 12345678901),
(2, 'Adam', 'Nowak', 3000.00, 'Sprzedawca', 12345678902), (3, 'Kamil', 'Kowalski', 1600.00, 'Asystent', 12345678903),
(4, 'Kamil', 'Kowalski', 3500.00, 'Kierownik', 12345678904), (5, 'Kamil', 'Kowalski', 800.00, 'Magazynier', NULL),
(6, 'Michal', 'Wisniewski', 2000.00, 'Analityk', NULL), (7, 'Pawel', 'Dabrowski', 2500.00, 'Kasjer', 12345678907),
(8, 'Ewa', 'Lewandowska', 1800.00, 'stazysta', 12345678908), (9, 'Karolina', 'Wojcik', 4000.00, 'Dyrektor', 12345678909),
(10, 'Monika', 'Zielinska', 2200.00, 'Ksiegowa', 12345678910);
SELECT * FROM pracownicy ;
SELECT imie, nazwisko, stanowisko FROM pracownicy;
SELECT imie, nazwisko, placa FROM pracownicy;
SELECT imie, nazwisko, placa AS wynagrodzenie FROM pracownicy;
SELECT * FROM pracownicy ORDER BY nazwisko DESC;
SELECT * FROM pracownicy ORDER BY imie ASC;
SELECT * FROM pracownicy ORDER BY nazwisko AMC, placa DESC;
SELECT * FROM pracownicy WHERE nazwisko = 'Kowalski';
SELECT * FROM pracownicy WHERE placa > 1600;
SELECT * FROM pracownicy WHERE placa < 3000;
SELECT * FROM pracownicy WHERE id > 3 AND id < 6;
SELECT * FROM pracownicy WHERE placa BETWEEN 1600 AND 3000;
SELECT * FROM pracownicy WHERE id IN (3, 5, 7);
SELECT * FROM pracownicy WHERE PESEL IS NULL;
SELECT * FROM pracownicy WHERE placa > 1500 AND LOWER(stanowisko) != 'kierownik';
