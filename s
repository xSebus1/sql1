ZAD 1:

SELECT k.tytul, g.gatunek, concat(a.imie, ' ', a.nazwisko) as autor FROM ksiazki as k INNER JOIN gatunki g on k.id_gatunku = g.id_gatunku INNER JOIN autorzy a on k.id_autora = a.id_autora WHERE k.id_gatunku = 4 GROUP by tytul

ZAD 2:

SELECT a.imie, count(k.tytul) from ksiazki k INNER JOIN autorzy a ON a.id_autora = k.id_autora GROUP by a.id_autora;

ZAD 3:

SELECT k.tytul, COUNT(w.id_wypozyczenia) il_wyp_ksiazek from wypozyczenia w INNER JOIN ksiazki k ON w.id_ksiazki = k.id_ksiazki GROUP by k.tytul;

ZAD 4:

SELECT concat(c.imie, ' ', c.nazwisko) imie_czyt, COUNT(w.id_ksiazki) il_wyp_ksiaz from wypozyczenia w INNER JOIN czytelnicy c on w.id_czytelnika = c.id_czytelnika GROUP by w.id_czytelnika HAVING COUNT(w.id_ksiazki) > 1;

ZAD 5:

SELECT g.gatunek, SUM(s.ilosc) from ksiazki k INNER JOIN gatunki g ON k.id_gatunku = g.id_gatunku INNER JOIN sprzedaz s on k.id_ksiazki = s.id_ksiazki GROUP BY k.id_ksiazki ORDER by SUM(s.ilosc) DESC;

ZAD 6:

SELECT concat(imie, ' ', nazwisko), AVG(wynagrodzenie) from pracownicy GROUP by id_pracownika HAVING AVG(wynagrodzenie) > wynagrodzenie;

ZAD 7:

SELECT concat(a.imie, ' ', a.nazwisko), k.tytul from ksiazki k INNER JOIN autorzy a on k.id_autora = a.id_autora WHERE a.imie LIKE 'A%' GROUP by a.id_autora;

ZAD 8:

SELECT s.ilosc, w.id_czytelnika from czytelnicy c INNER JOIN wypozyczenia w on c.id_czytelnika = w.id_czytelnika INNER JOIN sprzedaz s on C.id_czytelnika = s.id_czytelnika GROUP by c.id_czytelnika HAVING COUNT(s.ilosc) >= 1 and count(w.id_czytelnika) = 0;

ZAD 9:

SELECT s.nazwa, count(p.id_pracownika) il_os_na_stano from pracownicy p INNER JOIN stanowiska s on p.id_stanowiska = s.id_stanowiska ORDER by count(p.id_stanowiska) DESC

ZAD 10:

