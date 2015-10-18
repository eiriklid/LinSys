%Constants used during the helicopter assignment

%%%%%%%%%% Regulator constants
K_pd = 11;
K_f = 0.144759;

%%%%%%%%%% Moment of inertia constants
J_p = 2*m_p*l_p^2;
J_e = m_c*l_c^2 + 2*m_p*l_h^2;
J_la = (m_c*l_c^2 + 2*m_p*(l_h^2 + l_p^2));

%%%%%%%%%% Other constants
L_1 = l_p*K_f;
L_2 = g*(l_c*m_c - 2*m_p*l_h);
L_3 = l_h*K_f;

K_1 = L_1/J_p;
K_2 = L_3/J_e;
K_3 = L_2/J_la;
