%I-imazhi hyres
%a-pikselli fillestar sipas shtyllave
%b-pikselli perfundimtar sipas shtyllave
%c-pikselli fillestar sipas rreshtave
%d-pikselli perfundimtar sipas rreshtave
function y =  glassfilt(I,a,b,c,d)
[m n p] = size(I)
%m - rendi i matrices I sipas shtylles
%n - rendi i matrices I sipas rreshtit 
if ( a < b && b <= m && c < d && d <= n)
DISTANCA = 5;%distanca e piksellit per zhvendosje
SHTESA = padarray(I, [DISTANCA DISTANCA]);%i shton I-se rreshta dhe shtylla aq sa eshte distanca
for k = 1:p %veprimi behet ne te gjitha shtresat e imazhit
%veprojme ne zonen e percaktuar nga a,b,c,d
  for i = a:b %YPOZ = i
    for j = c:d %XPOZ = j
           
         NY = i + randint(1,1,[-DISTANCA +DISTANCA]);%pikselli sipas shtylles qe te zevendesohet
         NX = j + randint(1,1,[-DISTANCA +DISTANCA]);%pikselli sipas rreshtit qe do te zevendesohet
         
         if ( isequal(NY,0) || isequal(NX,0) )%meqe indeksimi i elementeve fillon nga 1
              I(i,j,k) = I(i,j,k);
              
         elseif( NY > m || NX > n || NY < 0 || NX < 0 )%kur tejkalohet madhesia e matrices I ose koordinatat gjenerohet me vlera negative
             NX = NX + DISTANCA;
             NY = NY + DISTANCA;
             I(i,j,k) = SHTESA(NY,NX,k);
            
         else
              I(i,j,k) = I(NY,NX,k);
         end 
       end
    end 
end 

else 'Kujdes parametrat, duhet te plotesohen kushtet qe a < b && b < m && c < d && d < n !'
end
y = I;
