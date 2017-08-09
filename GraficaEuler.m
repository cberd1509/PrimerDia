clc, clear all, close all

x= 0:0.01:100; %Genera la lista variando cada 0.01 hasta 100
y1 = exp(-0.03*x).*sin(x);
subplot(2,1,1);

plot(x,y1,'b')
xlabel('X')
ylabel('Y')
legend('exp(-0.03*x).*sin(x)')
grid on
title('Prueba1')

y2 = exp(-0.01*x).*cos(0.95*x);
subplot(2,1,2)
plot(x,y2,'r')
xlabel('X')
ylabel('Y')
legend('exp(-0.01*x).*cos(0.95*x)')
grid on
title('Prueba2')

