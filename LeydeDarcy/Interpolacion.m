clc, clear all, close all

L = 2000;
h=20;
width=300;

A  = h*width;

x=0:0.01:L;

k=100; %md

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
    q(i)=((0.001127)*k*A/mu)*(P(i)-P(1))/x(i);
    P1(i)=(P(i)-P(1))/x(i);
end

vapa = q/A;

vact = q/(phi*A);

figure
plot(x,P,'r')
xlabel('Distancia (ft)')
ylabel('Presion (psi)')
legend('P')
grid on
title('Curva de caida de presión')

figure
plot(x,q)
xlabel('Distancia (ft)')
ylabel('Caudal (bbl/day)')
legend('q (bbl/day')
grid on
title('Curva de caida de caudal')