I=imread('Zhurma periodike.jpg');
I1 = I(:,:,1);%shtresa e pare e imazhit
I2 = I(:,:,2);%shtresa e pare e imazhit
I3 = I(:,:,3);%shtresa e pare e imazhit
I1=largimiizhurmes(I1);
I2=largimiizhurmes(I2);
I3=largimiizhurmes(I3);
I11=histeq(I1,256);%ekualizimi i shtreses se pare te imazhit pas largimit te zhurmes
I22=histeq(I2,256);%ekualizimi i shtreses se dyte te imazhit pas largimit te zhurmes
I33=histeq(I3,256);%ekualizimi i shtreses se trete te imazhit pas largimit te zhurmes
%bashkimi i tri shtresave ne nje imazh te vetem
I(:,:,1)=I11;
I(:,:,2)=I22;
I(:,:,3)=I33;
imshow(I);