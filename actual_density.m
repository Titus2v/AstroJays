%Author: Shalom Cesar
function [actual_den] = actual_density(compress, pressure, temp, r)
%ACTUAL_DENSITY Calculates the actual density of a gas
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

