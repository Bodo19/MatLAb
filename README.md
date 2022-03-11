# MatLab
Functia Iterative
Mai intai citesc numarul de noduri apoi initializez matricile(3) si vectorii de o coloana(2) de care am nevoie pentru algoritm. 
Citesc apoi in g si p pagina si numarul  de pagini care sunt legate la aceasta, apoi paginile respective si modific in matricea 
de adiacenta. Inchid fisierul din care citesc si ma asigur ca am 0 pe diagonala principala. Scriu in matricea K pe diagonala 
principala raportul dintre 1 si suma paginilor legate, apoi calculez transpusa matricei M din inmultirea matricei de adiacenta 
si K. Fac primul vector conform algoritmului Iterativ apoi il copiez in al doilea vector si apoi tot repet operatia pana cand 
difernta dintre primul vector si al doilea este mai mica decat eps.

Functia Algebric
(Prima parte este identica ca la functia Iterative)Mai intai citesc numarul de noduri apoi initializez matricile(3) si vectorul 
de o coloana(1) de care am nevoie pentru algoritm. Citesc apoi in g si p pagina si numarul  de pagini care sunt legate la aceasta, 
apoi paginile respective si modific in matricea de adiacenta. Inchid fisierul din care citesc si ma asigur ca am 0 pe diagonala principala. 
Scriu in matricea K pe diagonala principala raportul dintre 1 si suma paginilor legate, apoi calculez transpusa matricei M din inmultirea 
matricei de adiacenta si K. Apoi calculez vectorul coloana conform algoritmului Algebric folosind inversa obtinuta din Gram-Schmidt si SST 
pe care l-am luat din curs si laborator.

Functia PR_Inv
Ma folosesc de algoritmii Gram-Schmidt si SST pentru a afla inversa. Mai intai fac descompunerea QR cu Gram-Schmidt modificat cu un 
singur for apoi cu SST aflu inversa matricei pornind de la Q si R.

Functia PageRank
Mai intai citesc numarul de noduri apoi initializez vectorii(2), unul de o coloana si unul de 2 coloane, de care am nevoie pentru 
algoritm. Citesc apoi in g si p pagina si numarul  de pagini care sunt legate la aceasta, apoi paginile respective si citesc ultimele 
2 valori de la finalul fisierului si inchid fisierul din care citesc. In a si b scriu vectorii obtinuti din functiile Iterative si 
Algebraic. In prima coloana din Z scriu numerele de la 1 la n si in a 2-a coloana valori din vectorul b apoi sortez descrescator 
vectorul Z dupa a 2-a coloana. Modific in a 2-a coloana valorie in functie de intervalul de valori. Printez in fisirul de iesire 
numarul de noduri, vectorul din Iterative si vectorul Algebraic si apoi vectorul Z si numarul de ordine.

Functia Apartenenta
Aflu valorile a si b si apoi creez intervalele pentru x 0 daca e mai mic ca val1, 1 daca e mai mare ca val 2 si a*x+b daca e intre valori. 
