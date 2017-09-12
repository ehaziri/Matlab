I = imread('lena.tif');
I = imnoise(I, 'salt & pepper', 0.2);%zhurma e 'kripe dhe piper'
J = modfilt(I,3,3,2,2,3,5,2,4, [1,1,1;1,1,1;1,1,1]);
