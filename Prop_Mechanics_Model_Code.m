% This is MATLAB code for propulsion mechanic calculations.
% Team: Zal, Rishi, Lucas, Shalom
%
% This code focuses on taking the research paper, "Numerical_Model" as a
% template and re-modeling those calculations to suit our rocket, which
% will be a hybrid-rocket. 
%
% DATA
% t = 400 k
% p = 550 psi (nozzle)
% ideal rocket 275 psi (nozzle)
% outer radius 1.5 inches -> fuel grain
% inner radius .99 inches
% total length 38.64 inches
%
% a(N2O) = 3.852 bar L^2/mol^2
% b(N2O) = 0.04435 L/mol
% density 935kg/m
% N2O -> calculate
% .75148 -> volume in meters cube 
% 50 degrees

%Our Stoichimetric Relationship:
% C2H4 + 6N2O -> 2CO2 + 6N2 + 2H2O

% NOTES
% Ask Ariana -> The Temperature of N2O, the Time we need to stay in the air

% Constants
R = 0.1889; %kj/kg * K
Z_N2O = 0.7; %Compressibility for N2O

% Reactants Molecular Mass
M_N2O = 44.013; %g/mol
M_C2H4 = 28.05; %g/mol

% Products Molecular Mass
M_C02 = 44.01; %g/mol
M_N2 = 28.01; %g/mol
M_H2O = 18.02; %g/mol

% Pressure Values 
P_N2O = 550; %psi

% Temperature Values
T_N2O = 280; %Kelvin, Estimate based on paper

% Critical Temperature
Tc_N2O = 309.57;

% Critical Pressures
Pc_N2O = 1050.8; %psi

% Normality Values

N_N2O = 6; %Assume to be 85
N_C2H4 = 1; %Calculate

% Reduced Values

PR_N2O = P_N2O / Pc_N2O; % reduced N2O pressure
TR_N2O = T_N2O / Tc_N2O; %reduced N2O temp
OP_ratio = (M_N2O * N_N2O) / (M_C2H4 * N_C2H4); %-> Calculate Normalities

%Ideal Pressure Calculation of N2O

Pid_N2O = P_N2O / (R_N2O * T_N2O); %kg / m^3

%Actual Pressure Calculation of N2O

Pac_N2O = Pid_N2O / Z_N2O;










