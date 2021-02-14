function [actual_den] = actual_density(compress, pressure, temp, r)
%ACTUAL_DENSITY Summary of this function goes here
%   Detailed explanation goes here
id = ideal_density(pressure, temp, r);
actual_den = id / compress;
end

function [ideal_den] = ideal_density(pressure, temp, r)
%IDEAL_DENSITY calculates the ideal density of a gas
    %pressure in kpascals
    %temperature in kelvin
    %R in kJ/kg * k
ideal_den = pressure / (r * temp); 
end

