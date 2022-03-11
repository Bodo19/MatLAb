function B = PR_Inv(A)
  [m,n]=size(A);
	R=zeros(m,n);
	Q=eye(m);
  % Initializez m, n si matricile R si Q
	for i = 1 : n
		R( 1 : i-1, i ) = Q( 1 : m, 1 : i-1 )'*A( 1 : m, i );
		y = A( 1 : m, i ) - Q( 1 : m, 1 : i-1 )*R( 1 : i-1, i );
		R( i, i ) = norm( y );
		Q( 1 : m, i ) = y ./ R( i, i );
	endfor
  % Folosesc forma modificata a algoritmului Gram-Schmidt cu un singur for
     C = eye(n) * Q';
  % Creez matricea C pentru SST
     [t t]=size(R);
     B=zeros(t, t);
  % Initializez marimea lui R si B
     for k = 1 : t;
  % Folosesc SST-ul modificat pentru 2 matrici
       for i=t:-1:1;
        s=0;
         for j=i+1:t
           s+=R(i,j)*B(j,k);
         endfor
        B(i,k)=(C(i, k)-s)/R(i,i);
       endfor
     endfor
endfunction