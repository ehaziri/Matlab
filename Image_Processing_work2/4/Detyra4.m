I = imread('Rrathet.jpg');
I = I(:,:,1);
K = I < 90;
imshow(K)
se = strel('disk', 11);
F = imerode(K, se);
imshow(K), figure, imshow(F)
%Labela dhe numri i komponenteve te lidhura
[L N] = bwlabel(double(F));
%Masa e regjioneve
prop = regionprops(L, 'Area', 'Centroid');
%tot1, tot2-totali i rratheve me diameter ekuivalet
tot1 = 0;
tot2 = 0;
imshow(F); hold on
%Rrathet numrohen ne baze te siperfaqes
for k = 1:size(prop,1)%Prej 1 deri te totali i rratheve ne imazh
s = prop(k).Centroid;
%ar=prop(k).Area;
X = s(1);
Y = s(2);
if prop(k).Area>2000
text(X-10, Y, 'A');
tot1 = tot1+1;
else
tot2 = tot2+1;
text(X-10, Y, 'B');
end
end
hold on
title(['TotA = ' , num2str(tot1), ';  TotB = ', num2str(tot2)])