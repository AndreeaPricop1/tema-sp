v=randn(1,10); %se genereaza o distributie normala de 10 elemente
negative = []; %vector in care concatenez elemente negative
for i=1:1:10
    if v(i)<0 %se cauta elementele negative din vectorul v
        negative = [negative v(i)]; %se adauga elementele negative in vectorul negative
    end
end
negative %se afiseaza elementele negative