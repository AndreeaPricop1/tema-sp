function [mean, square, matrix] = T1_E3_Operatii(complex)
    suma = 0;
    for i = 1:1:length(complex)
        suma = suma + real(complex(i)); %se calculeaza suma elementelor reale
    end
    mean = suma/length(complex) %se calculeaza media aritmetica a partilor reale 
    square = complex.*complex %se creeaza un vector cu elementele vectorului initial la patrat
    matrix = complex'*complex %se creeaza matricea obtinuta din inmnultirea vectorului initial cu transpusa lui                           
end

