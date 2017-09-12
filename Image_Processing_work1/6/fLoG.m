function h = fLoG(I,sigma1,sigma2)
[m n] = size(I);
h = zeros(m,n);
for x = 1:m
    for y = 1:n
        h(x,y) = DoG(x, y, sigma1, sigma2);
    end
end

%imshow(I), figure, imshow(h)