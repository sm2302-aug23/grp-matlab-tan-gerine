% Coordinates of cursive a
ax = [3.3 1 3 3.4 3.5 5];
ay = [2 1.2 0.6 2.2 1 0.5];

% Coordinates of cursive f
fx = [5 5.5 7 8 7 5 5.5 7 10 6.5 7];
fy = [0.5 1 2 3 4 3 2 -0.5 -0.5 1 1];

% Coordinates of cursive i
ix = [7 9 10 11 13];
iy = [1 1.25 3 1.25 1.2];

% Coordinates of cursive q
qx = [13 13.6 14.2 14.8 15.4 16.0];
qy = [1.6 1.8 2.0 1.8 1.2 1.4];


%------------------------------------------------------------------

% Spline interpolation

[t, tt] = tpar(ax);
axx = spline(t, ax, tt);
ayy = spline(t, ay, tt);

[t, tt] = tpar(fx);
fxx = spline(t, fx, tt);
fyy = spline(t, fy, tt);

[t, tt] = tpar(ix);
ixx = spline(t, ix, tt);
iyy = spline(t, iy, tt);

[t, tt] = tpar(qx);
qxx = spline(t, qx, tt);
qyy = spline(t, qy, tt);

%------------------------------------------------------------------

% Plot settings

nameplot(ax,ay,axx,ayy)
nameplot(fx,fy,fxx,fyy)
nameplot(ix,iy,ixx,iyy)
nameplot(qx,qy,qxx,qyy)

grid on
axis ([-1 20 -2 6])

xlabel('X')
ylabel('Y')
hold off
