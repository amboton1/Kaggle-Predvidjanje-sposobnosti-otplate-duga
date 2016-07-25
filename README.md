# Kaggle-Predvidjanje-sposobnosti-otplate-duga
https://inclass.kaggle.com/c/ai2016



Prijeti li nekome ovrha?

Posljednjih godina svjedočimo sve jačoj krizi zaduživanja. U nemilosrdnoj borbi za svakog klijenta, banke često nekritički izdaju kreditne kartice čime potiču prekomjerno zaduživanje. A njihovi klijenti, potaknuti lakoćom dolaska do sredstava i ne obazirući se na sposobnost otplate dugovanja,  pretjeruju u potrošnji što zatim dovodi i do velikih problema s ovrhama.

Kako bi se ipak donekle reducirala potencijalna šteta, važnu ulogu ima mogućnost identificiranja rizičnih klijenata. Stoga će se u ovome natjecanju predviđati sposobnost otplate duga po kreditnim karticama.

Cilj natjecanja je, na temelju zadanih karakteristika, uspješno identificirati one klijente koji neće biti u stanju uredno otplaćivati svoje dugove.

Izvorni podaci preuzeti su s "UCI Machine Learning Repository", ali su za potrebe ovog natjecanja donekle modificirani.


Za uspješno sudjelovanje u natjecanju na raspolaganju stoje tri datoteke. Dvije se koriste prilikom izgradnje i testiranja modela, a treća predstavlja primjer ispravno formatirane datoteke s rezultatima predviđanja (klasifikacije) kakvu je potrebno predati putem poveznice Predaja rezultata (Make a submission). Predana datoteka služi za evaluacija modela (rezultata).

Za potrebe natjecanja izvorni podaci su modificirani. Od ukupno 30000 instanci, slučajnim je odabirom odabrano 7000 za treniranje i 3000 za testiranje. Sve varijable iz izvorne datoteke također su uključene i u priložene datoteke s tom razlikom da, osim stvarnih podataka, ove datoteke sadrže i dvije dodatne "lažne" varijable čije su vrijednosti slučajno generirane.

Datoteke

trening.csv - sadrži podatke za treniranje
test.csv - sadrži podatke za testiranje
sampleSubmission.csv - primjer datoteke za predaju rezultata u ispravnom formatu
Opis datoteka

trening.csv

Sadrži sljedeće stupce (varijable):

Y - varijabla čija se vrijednost predviđa: (ne)sposobnost otplate duga (0 = nema problema s otplatom duga, 1= postoje problemi s otplatom duga)
X1 - odobren iznos na kartici
X2 - spol
X3 - stupanj obrazovanja (1 = diplomski ili poslijediplomski studij, 2 = preddiplomski studij, 3 = srednja škola, 4 = ostalo)
X4 - bračni status (1 = oženjen/udana, 2  = neoženjen/neudana, 3 = ostalo)
X5 - dob
X6 - X11 - podaci o prethodnim otplatama duga
X12 - X18 - stanje na računu tijekom određenog broja mjeseci
X19 - X25 - iznosi prethodnih otplata
test.csv

Ova  datoteka sadrži sve stupce (varijable) kao i trening.csv  s tom razlikom da su vrijednosti varijable Y slučajno generirane (tj. nemaju nikakvu važnost, ali su dodane radi potpunosti datoteke). Vrijednosti izlazne varijable nisu važne budući da ova datoteka služi isključivo za testiranje modela te se vrijednosti varijable Y predviđaju modelom.

Rezultat dobiven primjenom podataka za testiranje potrebno je dostaviti u formatu kao što je navedeno u primjeru sampleSubmission.csv.

sampleSubmission.csv

Format datoteke za predaju rezultata predviđanja 

Rezultat se predaje u datoteci koja mora sadržavati dva stupca s nazivima: "Id" i "Prediction".

"Id" predstavlja redni broj instance (brojevi od 1 do 3000),

"Prediction" je rezultat predviđanja (0 ili 1).

Svaka instanca mora biti u svom retku. Vrijednosti u pojedinom retku moraju biti odvojene zarezom.
