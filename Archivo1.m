data = rand(1000,1); %Genera  1000 Valores de 0 a 1
minimo = 3; %Minimo sd
maximo = 5;

data2 = data*(maximo-minimo)+minimo;

plot(data2,'r.')
figure
plot(data,'b.')

