clc, clear all, close all

[x1,y1] = TiroParabolico(30,0:0.01:5,10);
[x2,y2] = TiroParabolico(45,0:0.01:5,10);
[x3,y3] = TiroParabolico(60,0:0.01:5,10);

hold on

plot(x1,y1,'r');
plot(x2,y2,'b');
plot(x3,y3,'g');


xlabel('x')
ylabel('Y')
title('Graficas')

maximo = max([max(y1),max(y2),max(y3)]);

ylim([0,maximo]);
figure

v1 = zeros(length(x1-1));

% for i= 1 : 1 : v1
%  
% end
    