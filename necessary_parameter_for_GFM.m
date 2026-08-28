clc
% close
% clear
disp('Initializing parameters...');


% Nominal Value
f_nom = 50;
w_nom = 2*pi*f_nom;

% Base Value
S_base = 2e6;
V_LL_base = 400;
I_base = S_base/(sqrt(3)*V_LL_base);
Z_base = ((V_LL_base)*(V_LL_base))/S_base;
C_f_base = 1/(w_nom*Z_base);
L_f_base = Z_base/w_nom;

%droop co-efficient
kpw = (0.5*2*pi)/1e6;
kqv = 20/(1e6);

% DC Link parameter
V_dc=1000;


% LC Filter parameters
R_f = 1e-4; %inductor has internal resistance
L_f = 8e-6;
C_f = 4e-3;


% Grid side
Length = 5 ;
R_g_per_km = 0.15;
L_g_per_km = 0.001;
R_g = Length*R_g_per_km;
L_g = Length*L_g_per_km;


disp('Initialization done.');
