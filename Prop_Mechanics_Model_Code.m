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
% polyethylene density = 0.941 - 0.98 g/cm^3
% polyethylene molar mass = 200,000 - 500,000 g/mol
%
% current nitrous oxide flow rate is 0.4 kg / sec
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

% C2H4 L 1 / 910 2 . 4 4 . 0 . 0 . G 200 . 000 6000 . 000 28 . 05376 1
% 3 . 99182761E + 00 1 . 04833910E - 02 - 3 . 71721385E - 06 5 . 94628514E - 10 - 3 .53630526E - 14 4 . 26865819E + 03 - 2 .69052151E - 01 3 . 95920148E + 00 - 7 .57052247E - 03 5 . 70990292E - 05 - 6 . 91588753E - 08 2 .69884373E - 11 5 . 08977593E + 03 4 .09733096E + 00 6 . 31426266E + 03


%(used 298k for T because idk what the temp is) -Shalom 
%Heat of combustion for N2 
H_N2 = heat_combustion(298, 2.95257626, 1.39690057 * 10^-3, -4.92631691 * 10^-7, 7.86010367 * 10^-11, -4.60755321 * 10^-15, -9.23948645 * 10^2);
%Heat of combustion for H2O
H_H2O = heat_combustion(298, 2.67703787, 2.97318329 * 10^-3, -7.73769690 * 10^-7,9.44336689 * 10^-11, -4.26900959 * 10^-15, -2.98858938 * 10^4);
%Heat of combustion for CO2
H_CO2 = heat_combustion(298, 4.63659493, 2.74131991 * 10^-3, -9.95828531 * 10^-7, 1.60373011 * 10^-10, -9.16103468 * 10^-15, -4.90249341 * 10^4);  








