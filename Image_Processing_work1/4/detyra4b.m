I = imread('lena.tif');
I = imnoise(I, ‘gaussian’,0,1);
J=geofilt(I, 3, 3, 2, 2, 100,200,150, 230, [1, 1, 1;1, 2,1;1,1,1]);
