 %Se va genera un semnal cu rezolutie temporara de 2ms, 20ms, 200ms pentru un
%semnal continuu de tipul:
%3. Semnal dreptunghiular multinivel, aleator Durata fiecarui 
%nivel: 0,25 s.Nivelurile 

%b) {-3,-1,1,3} 

%Rezolutie temporara 2ms.
%analog pentru 20ms si 200ms doar ca se modifica __ din t=0:0.02/0.2:__
t=0:0.002:1.006;%variabila timp necesara pentru a afisa 4 nivele aleatoare
i=1;%contor
n=[-3,-1,1,3] ; %nivelele semnalului
pozitia=randi(length(n)); %cu functia randi extrag o pozitie aleatoare din n
Nivel_aleator=n(pozitia);%nivel_aleator ia valoarea din pozitia extrasa
v1=zeros(1,126); %t=0:0.002:0.25, de la 0 la 0.25 cu pasul de 0.002 sunt 126

for i=1:1:126  
    v1(i)=Nivel_aleator;  %umplu primul vector cu un nivel aleator
end
   
v2=zeros(1,126);
pozitia=randi(length(n));
Nivel_aleator=n(pozitia);
for i=1:1:126
    v2(i)=Nivel_aleator; %umplu al doi-lea vector cu un nivel aleator
end

v3=zeros(1,126);
pozitia=randi(length(n));
Nivel_aleator=n(pozitia);
for i=1:1:126
     v3(i)=Nivel_aleator;%umplu al trei-lea vector cu un nivel aleator
end

v4=zeros(1,126)
pozitia=randi(length(n));
Nivel_aleator=n(pozitia);

for i=1:1:126
    v4(i)=Nivel_aleator;%umplu al patru-lea vector cu un nivel aleator
end
V=[v1,v2,v3,v4];
plot(t,V),grid,axis([0 1 -4 4]),xlabel('timp(s)'),
ylabel('Amplitudine(V)');%afisez V=f(t)