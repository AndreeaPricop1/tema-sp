%Se va genera un semnal cu rezolutie temporara de 2ms, 20ms
%200ms pentru un semnal continuu de tipul:
%5. Semnal sinusoidal redresat dubla alternanta
%? Perioada semnalului sinusoidal neredresat: 4 s.
%? Amplitudine: 1.5.


%rezolutia temporara de 2ms
t=0:0.002:4;
f=0.25;
s=1.5*abs(sin(2*pi*f*t));
%formula redresarii dubla alternanta
subplot(3,1,1)
plot(t,s),grid,xlabel('timp(s)'),ylabel('Amplitudine(V)'),title('rez temp 2ms');

%rezolutia temporara de 20ms
t=0:0.02:4;
f=0.25;
s=1.5*abs(sin(2*pi*f*t));
subplot(3,1,2)
plot(t,s),grid,xlabel('timp(s)'),ylabel('Amplitudine(V)'),title('rez temp 20ms');

%rezolutia temporara de 200ms
t=0:0.2:4;
f=0.25;
s=1.5*abs(sin(2*pi*f*t));
subplot(3,1,3)
plot(t,s),grid,xlabel('timp(s)'),ylabel('Amplitudine(V)'),title('rez temp 200ms');