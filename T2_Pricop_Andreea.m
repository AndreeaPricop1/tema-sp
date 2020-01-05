%semnal dreptunghiular
P=40; %perioada
f=1/P; %frecventa
D=11; %durata
t=linspace(0,5*P,2000); %genereaza 2000 de puncte intre 0 si 5*P
s=square(2*pi*f*t,100*11/40); %semnalul initial

n=50; %numarul de coeficienti
funCont=@(t) square(2*pi*f*t,100*11/40); 
c0=1/P*integral(funCont, 0, P); %calculul componentei continue
ck=zeros(1,n);
Ak=zeros(1,n);
Ak(26)=2*abs(c0); %calcul armonicii fundamentale
semnal=0;
for (k=1:50)
   fun=@(t)square(2*pi*f*t,100*11/40).*exp(-2*pi*f*t*1i*(k-25));
   ck(k)=f*integral(fun,0,P); %calculul componentelor
   Ak(k+1)=2*abs(ck(k)); 
   semnal=semnal+ck(k)*exp(2*pi*f*t*1i*(k-25)); %semnalul refacut
end
Ak(1)=Ak(51);

figure (1);
stem([1:51],Ak);
xlabel('k');
ylabel('Amplitudine');

figure (2);
plot(t,semnal);
hold on;
plot(t,s);
title('x(t)si reconstructia folosind n coeficienti');
hold off;

%Seria  Fourier Exponentiala ofera o descompunere a semnalului periodic
%intr-o suma de componente elementare de tip exponential, nerealizabile
%fizic. Utilizarea ei este foarte comoda in problemele de determinare a
%raspunsului circuitelor la semnale periodice. Conform SFE orice
%semnal periodic poate fi aproximat printr-o suma infinita de sinusuri
%si cosinusuri de diferite frecvente.