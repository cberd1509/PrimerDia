function [ x1,x2 ] = Cuadrado( a,b,c )

%Calcula las dos raices 

x1 = (-b + sqrt(b^2 - 4 * a * c))/(2*a);
x2 = (-b - sqrt(b^2 - 4 * a * c))/(2*a);
end

