%Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
%200ms pentru un semnal continuu de tipul:
%4. Semnal sinusoidal redresat mono alternanta
%? Perioada semnalului sinusoidal initial (neredresat) 3 s.
%? Amplitudine: 0.8.

%Rezolutie temporara de 2 ms
t=0:0.002:4;
f=0.3333;
s=0.4*(sin(2*pi*f*t)+abs(sin(2*pi*f*t)));
%formula pentru redresare mono alternanta
subplot(3,1,1)
plot(t,s),grid,xlabel('timp(s)'),ylabel('Amplitudine(V)'),title('rez temp 2ms');

%Rezolutie temporara de 20 ms
t=0:0.02:4;
f=0.3333;
s=0.4*(sin(2*pi*f*t)+abs(sin(2*pi*f*t))); 
subplot(3,1,2)
plot(t,s),grid,xlabel('timp(s)'),ylabel('Amplitudine(V)'),title('rez temp 20ms');

%Rezolutie temporara de 200 ms
t=0:0.2:4;
f=0.3333;
s=0.4*(sin(2*pi*f*t)+abs(sin(2*pi*f*t)));
subplot(3,1,3)
plot(t,s),grid,xlabel('timp(s)'),ylabel('Amplitudine(V)'),title('rez temp 200ms');