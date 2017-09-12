function y = zhurma(tipi,m,n,a,b,s)
K = ones(m, n, s);%matrice e mbushur me njeshe me madhesi dhe shtresa te imazhit
%tipi-shperndarja me te cilen do te gjenerohet zhurma
%s- numri i shtresave te imazhit
%m-numri i rreshtave te imazhit
%n-numri i shtyllave te imazhit
%a,b-parametra
for i = 1:1:s %per te modifikuar secilen shtrese te imazhit vec e vec
 switch(tipi)
  case 'salt & pepper'
%Shuma Pa+Pb duhet te jete me e vogel se 1.
   if ( a + b ) > 1
    error ( ' Shuma Pa+Pb duhet te jete me e vogel se 1. ' )
   end
  K(1 : m , 1 : n, i) = 0.5 ;
%Gjenerojme nje matrice qe merr vleren ne rangun (0,1) per secilin element
%Pastaj, Pa*(m*n) nga to do te kene vlere <=a. Koordinatat e ketyre pikave
%i quajme 0 (zhurma piper).
%Ngjashem, Pb*(m*n) pika do te kene vlera ne rangun >a & <= a+b. Keto i
%quajme 1 (zhurma kripe).
   X = rand(m, n);
   K( X <= a ) = 0;
   u = a + b ;
   K(X > a & X <= u) = 1 ;
  case 'rayleigh'
  K(:,:,i)=a+sqrt(-b*log(1-rand(m,n)));
  case 'exponential'
       if a<=0
            disp('a duhet te jete pozitiv!');
        end
  K(:,:,i)=-log(1-rand(m,n))/a;
  case 'lognormal'
  K(:,:,i)=a*exp(b*randn(m,n));
  case 'erlang'
        if (b<=0)
            disp('a duhet te jete pozitiv!');
        end
  K(:,:,i)=-log(1-rand(m,n))/a;
  for i=2:b
  K(:,:,i)=K(:,:,i)-log(1-rand(m,n))/a;
  end
 end
end
y = K;