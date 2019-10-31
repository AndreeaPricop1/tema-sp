%Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
%200ms pentru un semnal continuu de tipul:
%1. Semnal dreptunghiular periodic cu
%? Perioad?: 2 s.
%? Factor de umplere: 25%.
%? Nivel maxim: +0.5.
%? Nivel minim: -1.

%Rezolutie temporara de 2 ms
t=-2:0.002:5;%intervalul de timp de la -2 secunde la 5 secunde( pentru a 
% afisa mai multe perioare) din 0.002 milisecunde in 0.002 milisecunde 


f=0.5;%frecventa

sq=-0.25+0.75*square((2*pi*f*t),25);
%Amplitudinea varf la varf este 1.5, daca impartim 1.5 la 2 obtinem
%0.75. Deci +0.75 o sa fie nivelul maxim.Pentru a cobori semnalul cu
%0.25 astfel incat sa avem nivelul maxim 0.5 scadem 0.25 din variabila sq.

subplot(3,1,1)

plot(t,sq),grid,axis([-2 5 -2 2]),xlabel('Timp(s)'),ylabel('Amplitudine')
title('Semnal Dreptunghiular( rez temp 2ms)');
%Cu functia plot afisam graficul lui sq in functie de t.Functia axis
%mareste axa x si y. Xlabel ne permite sa denumim axa x. Ylabel ne permite
%sa denumim axa y. Title ne permite sa denumim graficul obtinut.

%Rezolutie temporara de 20 ms
t=-2:0.02:5;
f=0.5;
sq=-0.25+0.75*square((2*pi*f*t),25);
subplot(3,1,2)
plot(t,sq),grid,axis([-2 5 -2 2]),xlabel('Timp(s)'),ylabel('Amplitudine')
title('Semnal Dreptunghiular( rez temp 20ms) ');

%Rezolutie temporara de 200 ms
t=-2:0.2:5;
f=0.5;
sq=-0.25+0.75*square((2*pi*f*t),25);
subplot(3,1,3)
plot(t,sq),grid,axis([-2 5 -2 2]),xlabel('Timp(s)'),ylabel('Amplitudine')
title('Semnal Dreptunghiular( rez temp 200ms) ');

