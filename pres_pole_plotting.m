% Plotting the poles of the system

%%%%%%%%% Plotting poles
plot(poles,'*')

%%%%%%%%% Create and plotting the inner circle
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

%%%%%%%%% Create and plotting the outer circle
axis ([-30 0 -30 30]);
r = 2.15*pole_gain;
xc = 0;
yc = 0;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)

hold off;
