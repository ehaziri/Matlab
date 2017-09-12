function f = tredimensionalDoG(sigma1, sigma2)
N = 3.0;
x=linspace(-N, N);
y=x;
[X,Y]=meshgrid(x,y);
Z = DoG(X,Y,sigma1, sigma2);
surf(X,Y,Z);
