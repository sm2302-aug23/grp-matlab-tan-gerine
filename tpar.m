% Creating parametric t coordinates
function [t, tt] = tpar(x)

n = length(x);
t = 0:n-1; % Parametric coordinates
tt = 0:0.01:n-1; % tt for spline interpolation
end