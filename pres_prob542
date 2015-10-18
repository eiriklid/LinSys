%Problem 5.4.1-5.4.2

%%%%%%%%% Clear all variables from memory
clc
clear

%%%%%%%%% Initialization and constants for the helicopter assignment
%         and running problem 5.3.3
run init_heli.m
run constants.m
run prob533.m

%%%%%%%%% Eigenvalues of the system
Aeigen = eig(A-B*K);

%%%%%%%%% The calculated polegain and poles
pole_gain = 12;
poles = [-1.4761 + 1.5652i; -1.4761 - 1.5652i; 
         -2.0700 + 0.581i;  -2.0700 - 0.581i; 
         -1.8600 + 1.078i;  -1.8600 - 1.078i] * pole_gain;

%%%%%%%%% Plot of the poles
run pole_plotting.m

%%%%%%%%% The matrices of the system
Aobs = [0 1 0 0 0 0; 0 0 0 0 0 0; 0 0 0 1 0 0; 0 0 0 0 0 0; 0 0 0 0 0 1; K_3 0 0 0 0 0];
Bobs = [0 0; 0 K_1; 0 0; K_2 0; 0 0; 0 0];

Cobs = [1 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];

%%%%%%%%% The observer gain matrix, L
L = place(Aobs.', Cobs.', poles).';

%%%%%%%%% Checking the observability of the system
ob = obsv(Aobs,Cobs);
rank = rank(ob);

