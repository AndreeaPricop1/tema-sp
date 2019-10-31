n = 0:20; %se definesc minisferele
m = -5:15;
z = zeros(1,21); %se defineste vectorul z
z(6) = 1; 

subplot(2,1,1); %se afiseaza in aceeasi ferestra ambele grafice
stem(n,z); %se reprezinta grafic z in functie de n
subplot(2,1,2); %se afiseaza in aceeasi ferestra ambele grafice
stem(m,z); %se reprezinta grafic z in functie de m