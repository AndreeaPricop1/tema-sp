%semnal triunghiular, T=5s, Nivel maxim +1 Nivel minim -2 
%panta de 1 V/s cu perioada 5s 
%perioada de 5s.

%Rezolutie temporala 2 ms

t=0:0.002:20; 
f=1/5;
s=1.5*sawtooth(2*pi*f*t, 0.5) - 0.5;
%functia sawtooth(t,width) genereaza un semnal triunghiular 
%de la 0 la 2pi * width functia atinge maximul iar de la 2pi*with la 2pi
%functia atinge minimul. Asadar pentru un semnal simetric, width=0.5.
%pentru a cobori semnalul cu 0.5 adaugam o componenta continua negativa
%-0.5
subplot(3,1,1)
plot(t,s),title('Semnal Triunghiular rez temp 2ms'),xlabel('Timp(s)')
ylabel('A(V)')

%Rezolutie temporala 20 ms
t=0:0.02:20; 
s=1.5*sawtooth(2*pi*f*t, 0.5) - 0.5;
subplot(3,1,2)
plot(t,s),title('Semnal Triunghiular rez temp 20ms'),xlabel('Timp(s)')
ylabel('A(V)')

%Rezolutie temporala 200 ms
t=0:0.2:20; 
s=1.5*sawtooth(2*pi*f*t, 0.5) - 0.5;
subplot(3,1,3)
plot(t,s),title('Semnal Triunghiular rez temp 200ms'),xlabel('Timp(s)')
ylabel('A(V)')

