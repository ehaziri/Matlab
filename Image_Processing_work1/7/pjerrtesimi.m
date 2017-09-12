function y = pjerrtesimi(I, m, n)
[M, N] = size(I);%madhesia e imazhit
I = im2double(I); %imazhi hyres ne imazh te tipit double
y = zeros(M, N);%gjenerohet njw matricw me vlera zero
for i = 1:M
    for j = 1:N
        if(m>=0 & n>=0)
        v = [i, j, 1] * [1 m 0; n 1 0; 0 0 1]; 
        %vektori v permban koordinatat e piksellit ku do te vendoset vlera e I(i,j)
        
        y(round(v(1)), round(v(2))) = I(i,j);
        %vlera e I(i,j) vendoset ne koordinatat (v(1), v(2)) te imazhit dales h
        
        elseif(m<0 & n>=0)
             y(round(i-m*(M-j)), round(j+i*n)) =I(i,j);
             %per vlere negative te m
        elseif(m>=0 & n<0)
            y(round(i+j*m), round(j-(N-i)*n)) =I(i,j);
            %per vlere negative te n 
        elseif(m<0 & n<0)
            y(round(i-(M-j)*m), round(j-(N-i)*n)) =I(i,j);
            %per vlere negative te m dhe n
        end
    end
end
imshow(I), figure, imshow(y); 
end
 
