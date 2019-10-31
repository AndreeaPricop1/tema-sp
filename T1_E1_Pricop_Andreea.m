a = 0:0.1:2; %se genereaza un vector (linie) de la 0 la 2, cu pasul 0.1
b = ones(21,1); %returneaza o matrice de dimensiune 21x1 cu elementele egale cu 1
%a*b face sens atunci cand numarul de linii al matricei a este egal cu numarul de coloane al matricei b    
prod1 = a*b; %produsul lui a si b,iar rezultatul lor este un numar
prod2 = b*a; %produsul lui b si a,iar rezultatul lor este o matrice
    
for i = 1:1:length(a)
    rezultat(i) = a(i)*b(i);
end
%se face inmultirea element cu element
%rezultatul este o linie, la fel ca a
