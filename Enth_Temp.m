function [Enth_Temp] = Enth_Temp(T, a1,a2, a3, a4, a5, b1)
% Calculates the Heat of Combustion of N2
%   
Enth_Temp = 8.314 * T * (a1 + a2*(T/2) + a3*(T^2/3) + a4 * (T^3/4) + a5 * (T^4/5) + b1/T);
end

