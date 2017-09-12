function h = zgjerimi(I, x1, x2, y1, y2)
I = I(:, :, 1); %merret shtresa e pare e imazhit I
%Kushtet te cilat duhet te plotesohen
if( (0 <= x1<= 255) && (0 <= x2<= 255) && (0 <= y1<= 255) &&(0 <= y2<= 255) &&( x1 < x2) && (y1< y2) )  
    
    if ( 0 <= I <= x1 )
        h = (y1./y2) * I;
    end
    
    if ( x1 < I < x2 )
        h = ((y2 - y1)./ (x2 - x1)).* I + y1;
    end
    
    if ( x2 <= I <= 255 )
        h = ((255-y2)./(255-x2)).*I + y2;
    end

else disp 'Kujdes vlerat e dhena per parametrat e funksionit!'; %nese jepen vlera qe thyejne kushtet e mesiperme 
end

imshow(I), figure, imshow(h)
