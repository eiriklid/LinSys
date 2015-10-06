run prob533.m
Aeigen = eig(A-B*K)
pole_gain = 12;
poles = [-1.4761 + 1.5652i; -1.4761 - 1.5652i; 
        -2.07 + 0.581i; -2.07 - 0.581i; 
        -1.86 + 1.078i; -1.86 - 1.078i] * pole_gain

plot(poles,'*')
grid on;
hold on;
axis ([-20 20 -20 20]);
r = 2.15;
xc = 0;
yc = 0;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)

axis ([-20 20 -20 20]);
r = 2.15*pole_gain;
xc = 0;
yc = 0;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)

hold off;
Aobs = [0 1 0 0 0 0; 0 0 0 0 0 0; 0 0 0 1 0 0; 0 0 0 0 0 0; 0 0 0 0 0 1; K_3 0 0 0 0 0];
Bobs = [0 0; 0 K_1; 0 0; K_2 0; 0 0; 0 0];
Cobs = [1 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];

L = place(Aobs.', Cobs.', poles).'

ob = obsv(Aobs,Cobs);

