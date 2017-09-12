function f = ImazhiMeFilter(k, sigma1, sigma2) %k-madhesia e filterit
                                   %sigma1- devijimi i pare
                                   %simga2-devijimi i dyte
I = imread('lena.tif');%I-imazhi origjinal
k = ones(k, k);%matrica kxk me madhesi te filterit
F = fLoG(k, sigma1, sigma2);

ImeF = imfilter(I, F);%ImeF-imazhi origjinal i filtruar me filtrin F
imshow(I), figure, imshow(ImeF,[]);