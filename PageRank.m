function [R1 R2] = PageRank(nume, d, eps)
f = fopen(nume);
n = fscanf(f, '%d\n', 1);
% Initializez si citesc numarul de noduri
R = zeros(n, 1);
Z = zeros(n, 2);
% Initializez 2 vectori unul cu o coloana si unul cu 2
for i = 1 : n 
g = fscanf(f, '%d %d', 2);
% Citesc nodul si cate pagini are legate
p = fscanf(f, '%d', g(2));
% Citesc paginile legate
endfor
drop = fscanf(f, '\n',1);
% Citesc endline-ul
val1 = fscanf(f, '%f\n', 1);
val2 = fscanf(f, '%f\n', 1);
% Citesc ultimele 2 valori de la finalul fisierului
fclose(f);
a = Iterative(nume, d, eps);
b = Algebraic(nume, d);
% In a si b scriu vectorii obtinuti din functiile Iterative si Algebraic
Z( :,1) = 1 : n;
Z( :,2) = b( : );
% In prima coloana din Z scriu numerele de la 1 la n si in a 2-a coloana 
% valori din vectorul b
Z = sortrows(Z, -2);
% Sortez descrescator vectorul Z dupa a 2-a coloana 
for i = 1 : n
Z(i , 2) = Apartenenta(Z(i , 2), val1, val2); 
% Modific in a 2-a coloana valorie in functie de intervalul de valori
endfor
o = "fis.out";
fid = fopen(o, "w");
fprintf(fid,'%d\n', n);
fprintf(fid,'\n');
fprintf(fid,'%f\n', a);
fprintf(fid,'\n');
fprintf(fid,'%f\n', b);
fprintf(fid,'\n');
for i = 1 : n
fprintf(fid,'%d %.0f %f\n', i, Z(i , 1), Z(i , 2));
endfor
% Printez in fisirul de iesire numarul de noduri, vectorul din Iterative si 
% vectorul Algebraic si apoi vectorul Z si numarul de ordine
fclose(fid);
endfunction 