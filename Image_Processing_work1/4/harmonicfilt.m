function y =  harmonicfilt(I,M,N,x,y,a,b,c,d,E)
%M – numri i rreshtave të filterit E
%N – numri i shtyllave të filterit E
%x - koordinata x e qendrës së filterit E
%y - koordinata y e qendrës së filterit E
%a - rreshti a i imazhit I
%b- rreshti b i imazhit I
%c- shtylla c i imazhit I
%d- shtylla d i imazhit I
%E- filteri

IMG = I(a:b, c:d);
zerotVert = M-2;
zerotHoriz = N-2;
I1= I;
Z = padarray(IMG, [zerotVert zerotHoriz]);
Z = im2double(Z);
[m, n] = size(Z);

for i = zerotVert +1 : (m-zerotVert)
 for j = zerotHoriz +1 :(n-zerotHoriz)
        A = Z(i- (x - 1):i+(M-x), j- (y - 1) :j+(N-y));
        AE = double(A).*double(E);
		p = harmmean(AE(:)); 
        I1(a+i-zerotVert-1, c+j-zerotHoriz-1)=p*255;
 end
end
imshow(I), figure, imshow(I1);
y=I1;

