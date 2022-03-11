function R = Iterative(nume, d, eps)
f = fopen(nume);
n = fscanf(f, '%d\n', 1);
% Initializez si citesc numarul de noduri
T = zeros(n,n);
K = zeros(n,n);
M = zeros(n,n);
% Initializez 3 matrice de n ori n
R = zeros(n, 1);
Ru = zeros(n, 1);
% Initializez 2 vectori coloana
for i = 1 : n 
g = fscanf(f, '%d %d', 2);
% Citesc nodul si cate pagini are legate
p = fscanf(f, '%d', g(2));
% Citesc paginile legate
T(i, p(1:g(2))) = 1;
% Fac matricea de adiacenta
endfor
fclose(f);
for i = 1 : n
 T(i, i) = 0;
% Ma asigru ca am 0 pe diagonala principala
endfor
for i = 1 : n
  K(i, i) = 1/sum(T(i,:));
% Scriu in matricea K pe diagonala principala raportul dintre 1 si suma 
% paginilor legate 
endfor
M = (K * T)';
% Fac matricea M transpusa
R(:)=1/n;
Ru = d * M * R + (1 - d) / n * ones(n, 1);
% Fac vectorul Ru folosind formula pentru metoda iterativa
while norm(Ru-R)>=eps
  R = Ru;
  Ru = d * M * R + (1 - d) / n * ones(n, 1);
% Tot refac operatia pentru metoda iterativa pana cand diferenta dintre R si RU
% este mai mare sau egal cu eps astfel mimand o evolutie in timp
endwhile
endfunction  