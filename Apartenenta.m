function y = Apartenenta(x, val1, val2)
a = 1 / (val2 - val1);
b = -a * val1;
% Aflu valorile a si b si apoi creez intervalele pentru x 0 daca e mai mic 
% ca val1, 1 daca e mai mare ca val 2 si a*x+b daca e intre valori
if x < val1
  y = 0;
else 
  if x > val2
    y = 1;
  else
    y = a * x + b;
  endif
endif
endfunction