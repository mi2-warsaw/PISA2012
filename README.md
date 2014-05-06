PISA2012
========


<h2>Poligon Doświadczalny</h2>
Czyli co młody statystyk jest w stanie wyczytać z danych PISA2012?

Twórcy projektu
- Marcin Kosiński, 
- Marcin Kania,
- Marta Szczerbień,
- Magda Waśniowska,
- Patrycja Wiśniewska

> Kontakt: kzps@mimuw.edu.pl


<h3> Cel ! </h3>

Poniższe repozytorium przedstawia raport [na temat] stworzony przez członków Koła Zarządzania Projektami Statystycznymi Uniwersytetu Warszawskiego. Dane niezbędne do analizy zostały zaczerpnięte z badania **PISA2012** - Programme for International Student Assesment, przeprowadzanego przez Organisation for Economic Co-operation and Development (OECD).
Raport jest w trakcie tworzenia. Każdy zainteresowany może
dopisać swój rozdział bądź podrozdział i zostanie uwzględniony w spisie autorów w ostatecznej wynikowej wersji
naszych eksperymentalnych potyczek ze zbiorem danych z **PISA2012**.


[Nasza strona internetowa](http://kolozarzadzaniaprojektamistatystycznymi.github.io/info/)

<h3> WCZYTANIE PISA2012 DO R </h3>
Poniżej mała instrukcja jak dokopać się do danych z PISA2012, aby działały w **R**.
Dane w formacie `.txt` pobieramy [stąd](http://pisa2012.acer.edu.au/downloads/INT_STU12_DEC03.zip). Następnie w systemie **SAS** tworzymy nowy program, którego 3 pierwsze linie można (ale nie trzeba) wpisać jak poniżej:
```{Ruby}
libname  MD "D:\PISA 2012"; 
filename STU "D:\PISA 2012\INT_STU12_DEC03.txt"; 
options nofmterr;
```
Kolejne linie w programie powinny byc przekopiowane [z tego pliku](http://pisa2012.acer.edu.au/downloads/INT_STU12_SAS.sas). W tym momencie można już wywołać cały program w **SAS**, aby uzyskać pełną bazę danych **PISA2012**. Ponieważ baza zajmuje około 1,5 GB, ograniczymy się jedynie do danych dotyczących Polski, dzięki czemu program **R** będzia działał sprawniej na mniej pojemnym pliku. Posłuży do tego zapytanie **SQL**, które prezentuję poniżej:
```{Ruby}
proc sql;
create table POL as
select *
from Md.Stu
where CNT = 'POL'
;
```
Pomimo, że pierwsza kolumna bazy, z której wybieramy jedynie Polskę, ma widniejący podpis `Country code 3-character`, to jednak po wyświetleniu atrytbutów kolumny widać, że jej nazwa to `CNT`, a `Country code 3-character` to jedynie etykieta. Dodatkowo można w ten sposób odczytać informację o długości znaków w tej kolumnie, która wynosi 3, dlatego ostatecznie w zapytaniu **SQL** widnieje linia `where CNT = 'POL'`. 
Tak pomniejszoną bazę danych eksportuję do formatu `.csv` (możliwe, że bezmyślnie), dzięki procedurze `export`. Wszystkie dotychczasowe komendy i operacja odbywały się w systemie **SAS**.
```{Ruby}
proc export data=Pol
   outfile='D:\PISA 2012\polska.csv'
   dbms=csv
   replace;
run;
```
Ostatecznie z pliku `.csv` można już "tradycyjnie" wczytać dane do pakietu **R**, używając prostego polecenia **read.csv**.
```{Ruby}
POL <- read.csv("D:/PISA 2012/polska.csv", sep=",", h=TRUE)
```

Opisy poszczególnych kolumn można znaleźć w [Codebook'u](http://pisa2012.acer.edu.au/downloads/M_stu_codebook.pdf). Należy pamiętać, że powyższa baza danych dotyczyła jedynie kwestionariuszy wypełnianych przez uczniów.
Więcej na ten temat można znaleźć na stronie [PISA2012](http://pisa2012.acer.edu.au/downloads.php).

