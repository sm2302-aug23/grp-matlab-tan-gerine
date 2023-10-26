%% Definining data points for the name "Haiman"

% Coordinates of cursive H
hx = [1 2 1.25 0.75 0.25 3.75 3.25 2.5 3.75];
hy = [4 5 2 0.25 1.25 4.25 4.75 0.25 0.25];

% Coordinates of A
ax = [4.25 5.22 5.7 5.22 4.25 4.25 5.75 5.75 5.56 7];
ay = [1.5 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 0.25];

% Coordinates of I
ix = [8 8.25 7.75 7.75 9];
iy = [1.25 2.5 1.25 0.25 0.25];

% Combine all axes
x = [hx ax ix];
y = [hy ay iy];

%------------------------------------------------------------------

% Spline interpolation
[t, tt] = tpar(x);
xx = spline(t, x, tt);
yy = spline(t, y, tt);

%------------------------------------------------------------------

% Plot settings
figure(1)
plot(xx, yy, 'k', 'LineWidth', 1.5)
hold on
plot(x, y, 'bo', 'MarkerFaceColor','b')
% axis ([-0.5 20 -0.5 6])
grid on

xlabel('X')
ylabel('Y')

hold off