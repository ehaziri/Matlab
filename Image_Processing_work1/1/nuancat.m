function f = nuancat(kuq, gjelber, kalter)
I = imread('baboon.jpg');
disp 'Kujdes duhet qe kuq + gjelber + kalter = 1'
Iout = kuq * I(:, :, 1) + gjelber * I(:, :, 2) + kalter * I(:, :, 3);
imshow(I), figure, imshow(Iout, [])
