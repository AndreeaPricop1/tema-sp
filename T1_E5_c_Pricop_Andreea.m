F1 = 20; %frecventa 1
F2 = 50; %frecventa 2
t = 0:0.001:0.2; %durata de timp a semnalului
c = cos(2*pi*F1*t); %se genereaza un semnal cosinusoidal cu frecventa F1
s = sin(2*pi*F2*t); %se genereaza un semnal sinusoidal cu frecventa F2
plot(t,c,'.-r',t,s) %se reprezinta grafic semnalele 
xlabel('Timp (s)')
ylabel('Amplitudine')
grid