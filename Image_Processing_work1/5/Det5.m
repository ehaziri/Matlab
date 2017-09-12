function h = Det5(I)
F = fspecial('laplacian', 0.5)%Veprojmw sw pari me operator tw Laplasit
D = imfilter(I, F);

F1 = [0 0 0; 0 -1 0.5; 0 0.5 0] %Operatori yne qe kemi fituar

D1 = imfilter(I, F1);%filtrojme imazhin origjinal me operatorin tone

imshow(I), figure, imshow(D), figure, imshow(D1)