function h = Det2(I)
imshow(I), figure,imhist(I), figure,
x = [2 8 32 128];% x ? {2,8,32,128} mundwson reduktimin e ngjyrës me shkallë të hirtë të 
%imazhit me 256 vlera të hirta pasi tw thirret funksioni Det2(I,x) në 128, 32, 8 dhe 2 vlera të hirta.

n = length(x); %gjatesia e vargut x
for i = 1:n % merret indeksi i vargut pwr t’iu qasur si mw poshtw
    J = floor((((I / x(i))-1)) * (x(i)-1)); %cikli i parw: J = (I/2)*2
    imshow(J),pixval on, figure,imhist(J), figure,% cikli i parw: shfaqet figura me 128 vlera tw hirta dhe histogrami pwrkatws
end


