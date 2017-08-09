clc, clear all, close all

L = 2000;
h=20;

width=300;

A  = h*width;

x=0:0.01:L;

K = 1:10:1000;

%viscosidad

mu=0.1:0.5:5; %cP

%dP

alfa = -0.003;
P0 = 2000; %psi

Pf = 1990;

P=(P0-Pf)*(1-exp(alfa*x))+Pf;

%porosidad

phi = 0.15;

Vact = zeros(length(K),length(mu));


counter = 0;
tic
for j=1:length(K)
    
    for k=1:length(mu)
        
        counter = counter+1;
        disp([num2str(100*counter/(length(K)*length(mu))) '%'])            
        
        for i=1:length(x)
            
            q(i)=((0.001127)*K(j)*A/mu(k))*(P(i)-P(1))/x(i);
            %P1(i)=(P(i)-P(1))/x(i);
        end
        
        vact = q/(phi*A);
        Vact(j,k) = max(vact);
        clc
    end
   
end
toc

figure, mesh(mu,K,Vact)
colormap jet
colorbar
xlabel('Viscosidad')
ylabel('Permeabilidad')
