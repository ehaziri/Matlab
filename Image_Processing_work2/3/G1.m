function y = G1(I,x,y,r)
[M,N]=size(I);
A=ones(M,N);
for i=1:M
for j=1:N
if(sqrt((i-x)^2+(j-y)^2)<=r)
A(i,j)=0;
end
end
end
y=A;