%Problem 5.3.1-5.3.2

%%%%%%%%% Clean command window and clear all variables from memory
clc
clear

%%%%%%%%% Initialization and constants for the helicopter assignment
run init_heli.m
run constants.m

%%%%%%%%% The matrices of the system
A = [0 1 0 ; 0 0 0; 0 0 0];
B = [0 0; 0 K_1; K_2 0];

C = [1 0 0; 0 0 1];

%%%%%%%%% Examining the controllability of the system
Co = ctrb(A,B);
rank(Co);

%%%%%%%%% The weighted matrices Q, R
Q = [1/((pi/3)^2) 0 0; 0 1/((2*50*pi/180)^2) 0; 0 0 1/((2*20*pi/180)^2) ];
R = [1/(10^2) 0; 0 1/(10^2)];

%%%%%%%%% The matrix K corresponding to the linear quadratic regulator (LQR) 
K = lqr(A,B,Q,R);

%%%%%%%%% The matrix P
P = inv( C*(inv(B*K-A))*B);
