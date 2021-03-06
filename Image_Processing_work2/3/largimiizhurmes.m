function y=largimiizhurmes(I);
[m n s] = size(I);
B1=I(:,:,s);
FTB1=fft2(B1);
FTB1SH=fftshift(FTB1);
A = log(abs(FTB1SH));
%max(max(A))
A = A / 20;%kthimi ne vlera mes 0 dhe 1
BinIm = im2bw(A);%kthimi ne imazh binar
%imshow(BinIm)
sq = ones(m, n);%elementi strukturor me madhesi te imazhit
BinIm = imdilate(BinIm, sq);%zgjerimi i imazhit binar 
imshow(BinIm)
BinIm = 1-BinIm;%negacioni i imazhit binar
M = ones(m, n);%gjenerimi i matrices M te mbushur me njeshe me madhesi te imazhit 
rrezja = 70;%rrezja per krijimin e rrethit 
pika = G1(M, m/2, n/2, rrezja);%krijimi i rrethit
pika = 1 - pika;%negacioni i rrethit te siperkrijuar ne menyre qe te mos preket qendra e imazhit
B =BinIm + pika;
%imshow(B)
C1=FTB1SH.*B;
C2=ifftshift(C1);
C3=ifft2(C2);
y=uint8(real(C3));