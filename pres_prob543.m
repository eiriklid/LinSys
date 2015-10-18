%Problem 5.4.3

%%%%%% Clear all variables from memory
clc
clear

%%%%%%%%% Initialization and constants for the helicopter assignment
run init_heli.m
run constants.m

%%%%%%%%% The matrices of the system
Aobs = [0 1 0 0 0 0; 0 0 0 0 0 0; 0 0 0 1 0 0; 0 0 0 0 0 0; 0 0 0 0 0 1; K_3 0 0 0 0 0];
Bobs = [0 0; 0 K_1; 0 0; K_2 0; 0 0; 0 0];

Cobs = [1 0 0 0 0 0; 0 0 1 0 0 0; 0 0 0 0 1 0];

%%%%%%%%% Checking the observability of the system

% When only measuring tilde(e) and tilde(λ)
Cobs1 = [0 0 1 0 0 0; 0 0 0 0 1 0];
obs1 = obsv(Aobs,Cobs1);
rank1 = rank(obs1);

% When only measuring tilde(p) and tilde(e)
Cobs2 = [1 0 0 0 0 0; 0 0 1 0 0 0];
obs2 = obsv(Aobs,Cobs2);
rank2 = rank(obs2);

%%%%%%%%% The calculated polegain and poles
pole_gain = 5;
poles = [-2.0200 + 0.7353i; -2.0200 - 0.7353i; 
         -2.1170 + 0.3733i; -2.1170 - 0.3733i; 
         -1.8600 + 1.0780i; -1.8600 - 1.0780i] * pole_gain;

%%%%%%%%% The observer gain matrix, L
L = place(Aobs.', Cobs1.', poles).';

%%%%%%%%% Plot of the poles
run pole_plotting.m
