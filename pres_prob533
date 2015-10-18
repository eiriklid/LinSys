%Problem 5.3.3

%%%%%%%%% Clean command window and clear all variables from memory
clc
clear

%%%%%%%%% Initialization and constants for the helicopter assignment
run init_heli.m
run constants.m

%%%%%%%%% The matrices of the system
A = [0 1 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 0 0 0 0; 0 0 1 0 0];
B = [0 0; 0 K_1; K_2 0; 0 0; 0 0];

C = [1 0 0 0 0; 0 0 1 0 0];

%%%%%%%%% The weighted matrices Q, R
Q = [1/((pi/2.5)^2)   0                  0            0               0; 
         0      1/((2*250*pi/180)^2)     0            0               0; 
         0            0          1/((2*20*pi/180)^2)  0               0; 
         0            0                  0        1/((pi/2.5)^2)      0; 
         0            0                  0            0         1/((2*20*pi/180)^2)];
R = [1/(10^2) 0; 0 1/(10^2)];

%%%%%%%%% The matrix K corresponding to the linear quadratic regulator (LQR) 
K = lqr(A,B,Q,R);
