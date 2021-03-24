% This is MATLAB code for propulsion mechanic calculations.
% Team: Zal, Rishi, Lucas, Shalom,Fanuel
%
% This code focuses on taking the research paper, "Numerical_Model" as a
% template and re-modeling those calculations to suit our rocket, which
% will be a hybrid-rocket. 
%
% DATA
% t = 400 k
% p = 550 psi (nozzle)

%Our Stoichimetric Relationship:
% C2H4 + 6N2O -> 2CO2 + 6N2 + 2H2O

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%MASS FLOW RATE

% Constants
R = 0.1889; %kj/kg * K
Z_N2O = 0.7; %Compressibility for N2O

% Reactants Molecular Mass
M_N2O = 44.013; %g/mol
M_C2H4 = 28.05; %g/mol

% Pressure Values 
P_N2O = 3792.12; %kPa

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

%Ideal Density Calculation of N2O

Pid_N2O = P_N2O / (R * T_N2O); %kg / m^3

%Actual Density Calculation of N2O

den_N2O = actual_density(0.7, P_N2O, T_N2O, R);

%Current Predicted N2O Mass Flow Rate

N2O_mF = 0.4; % kg / sec

%Current Predicted HDPE Mass Flow Rate

HDPE_mF = N2O_mF / OP_ratio; % kg / sec








