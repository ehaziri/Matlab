function gauss = f(x,y,d)

h=(1./(2.*pi.*d)).*exp(-(x.^2 + y.^2)./(2.*d.^2));

gauss = h;