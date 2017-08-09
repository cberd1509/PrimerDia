clc, clear all, close all

L = 2000;
h=20;
width=300;

A  = h*width;

x=0:0.01:L;


k(1:50000) = normrnd(0,3,1,50000)+100;
k(50001:150000) = normrnd(0,1,1,100000)+150;
k(150001:200001) = normrnd(0,4,1,50001)+110;


%viscosidad

mu=2; %cP

%dP

alfa = -0.003;
P0 = 2000; %psi

Pf = 1990;

P=(P0-Pf)*(1-exp(alfa*x))+Pf;

%porosidad

phi = 0.15;

for i=1:length(x)
    q(i)=((0.001127)*k(i)*A/mu)*(P(i)-P(1))/x(i);
    P1(i)=(P(i)-P(1))/x(i);
end

vapa = q/A;

vact = q/(phi*A);


subplot(2,2,1);

plot(x,P,'r')
xlabel('Distancia (ft)')
ylabel('Presion (psi)')
legend('P')
grid on
title('Curva de caida de presi�n')

subplot(2,2,2);
plot(x,q)
xlabel('Distancia (ft)')
ylabel('Caudal (bbl/day)')
legend('q (bbl/day')
grid on
title('Curva de caida de caudal')

subplot(2,2,3);
plot(x,P1)
xlabel('Distancia (ft)')
ylabel('Prsion 1')
legend('P1')
grid on
title('Curva de P1')

subplot(2,2,4)
plot(x,k)
xlabel('Permeabilidad (mD)')
ylabel('Permeabilidad cada X')
legend('K')
grid on
title('Curva de K')