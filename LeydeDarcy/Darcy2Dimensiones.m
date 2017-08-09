clc, clear all, close all

L = 2000;
h=20;

h1=0.3;
h2=0.5;
h3=0.2;
width=300;

A1  = h*h1*width;
A2  = h*h2*width;
A3  = h*h3*width;

x=0:0.01:L;


k1 = lognrnd(0,0.02,size(x))+80;
k2 = lognrnd(0,0.02,size(x))+70;
k3 = lognrnd(0,0.02,size(x))+90;


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
    q1(i)=((0.001127)*k1(i)*A1/mu)*(P(i)-P(1))/x(i);
    q2(i)=((0.001127)*k2(i)*A2/mu)*(P(i)-P(1))/x(i);
    q3(i)=((0.001127)*k3(i)*A3/mu)*(P(i)-P(1))/x(i);
    P1(i)=(P(i)-P(1))/x(i);
end

%vapa = q/A;

%vact = q/(phi*A);


subplot(2,2,1);

plot(x,P,'r')
xlabel('Distancia (ft)')
ylabel('Presion (psi)')
legend('P')
grid on
title('Curva de caida de presión')

subplot(2,2,2);
hold on
plot(x,q1)
plot(x,q2)
plot(x,q3)
plot(x,q1+q2+q3)
xlabel('Distancia (ft)')
ylabel('Caudal (bbl/day)')
legend('q1','q2','q3','qt')
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
hold on
plot(x,k1)
plot(x,k2)
plot(x,k3)
xlabel('Permeabilidad (mD)')
ylabel('Permeabilidad cada X')
legend('K1','K2','K3')
grid on
title('Curva de K')