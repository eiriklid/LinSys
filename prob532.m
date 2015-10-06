A = [0 1 0 ; 0 0 0; 0 0 0];
B = [0 0; 0 K_1; K_2 0];
C = [1 0 0; 0 0 1];

Q = [1/((pi/3)^2) 0 0; 0 1/((2*50*pi/180)^2) 0; 0 0 1/((2*20*pi/180)^2) ];
R = [1/(10^2) 0; 0 1/(10^2)];


K = lqr(A,B,Q,R);

%P = [0 K(1,3); K(2,1) 0];
% InverseBKA = inv(B*K-A)
% CInverseBKA = C*(inv(B*K-A))
% CInverseBKAB = C*(inv(B*K-A))*B

P = inv( C*(inv(B*K-A))*B)
